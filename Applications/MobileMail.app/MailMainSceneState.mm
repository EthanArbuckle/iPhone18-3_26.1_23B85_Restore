@interface MailMainSceneState
+ (id)log;
- (ConversationViewRestorationState)conversationViewState;
- (MailMainSceneState)initWithBuilder:(id)builder;
- (MailMainSceneState)initWithDictionary:(id)dictionary daemonInterface:(id)interface componentFactory:(id)factory;
- (MessageListRestorationState)messageListState;
- (NSString)ef_publicDescription;
- (id)_conversationStateDictionaryFromDictionary:(id)dictionary version:(int64_t)version;
- (id)_favoritesManagerStateFromDictionary:(id)dictionary version:(int64_t)version;
- (id)_messageListStateDictionaryFromDictionary:(id)dictionary version:(int64_t)version;
- (id)beginLoadingConversationStateWithDictionary:(id)dictionary daemonInterface:(id)interface;
- (id)beginLoadingMessageListStateWithDictionary:(id)dictionary daemonInterface:(id)interface;
- (id)dictionaryRepresentation;
- (int64_t)_detailNavigationStateFromDictionary:(id)dictionary version:(int64_t)version;
- (int64_t)_primaryNavigationStateFromDictionary:(id)dictionary version:(int64_t)version;
- (int64_t)_supplementaryNavigationStateFromDictionary:(id)dictionary version:(int64_t)version;
- (int64_t)_versionFromDictionary:(id)dictionary;
- (void)_loadFromDictionary:(id)dictionary daemonInterface:(id)interface componentFactory:(id)factory;
- (void)_setDefaultValues;
- (void)setConversationViewState:(id)state;
- (void)setMessageListState:(id)state;
@end

@implementation MailMainSceneState

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011EFA4;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD0F8 != -1)
  {
    dispatch_once(&qword_1006DD0F8, block);
  }

  v2 = qword_1006DD0F0;

  return v2;
}

- (MailMainSceneState)initWithDictionary:(id)dictionary daemonInterface:(id)interface componentFactory:(id)factory
{
  dictionaryCopy = dictionary;
  interfaceCopy = interface;
  factoryCopy = factory;
  v14.receiver = self;
  v14.super_class = MailMainSceneState;
  v11 = [(MailMainSceneState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(MailMainSceneState *)v11 _setDefaultValues];
    [(MailMainSceneState *)v12 _loadFromDictionary:dictionaryCopy daemonInterface:interfaceCopy componentFactory:factoryCopy];
  }

  return v12;
}

- (MailMainSceneState)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v8.receiver = self;
  v8.super_class = MailMainSceneState;
  v5 = [(MailMainSceneState *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MailMainSceneState *)v5 _setDefaultValues];
    builderCopy[2](builderCopy, v6);
  }

  return v6;
}

- (void)_setDefaultValues
{
  [(MailMainSceneState *)self setPrimaryNavState:1];
  [(MailMainSceneState *)self setSupplementaryNavState:0];
  [(MailMainSceneState *)self setDetailNavState:0];

  [(MailMainSceneState *)self setMessageListState:0];
}

- (id)dictionaryRepresentation
{
  conversationViewState = [(MailMainSceneState *)self conversationViewState];
  dictionaryRepresentation = [conversationViewState dictionaryRepresentation];

  messageListState = [(MailMainSceneState *)self messageListState];
  dictionaryRepresentation2 = [messageListState dictionaryRepresentation];

  v7 = objc_alloc_init(NSMutableDictionary);
  [v7 setObject:&off_100674168 forKeyedSubscript:@"StateDictionaryVersion"];
  favoritesManagerState = [(MailMainSceneState *)self favoritesManagerState];
  [v7 setObject:favoritesManagerState forKeyedSubscript:@"FavoritesManagerState"];

  primaryNavState = [(MailMainSceneState *)self primaryNavState];
  v10 = @"MessageList";
  if (primaryNavState <= 2)
  {
    v10 = *(&off_100650C08 + primaryNavState);
  }

  [v7 setObject:v10 forKeyedSubscript:@"PrimaryNavigationState"];
  if ([(MailMainSceneState *)self supplementaryNavState]== 1)
  {
    v11 = @"MessageList";
  }

  else
  {
    v11 = @"MessageListCollapsedToPrimary";
  }

  [v7 setObject:v11 forKeyedSubscript:@"SupplementaryNavigationState"];
  detailNavState = [(MailMainSceneState *)self detailNavState];
  v13 = @"NoSelection";
  if (detailNavState == 1)
  {
    v13 = @"ConversationViewPrimary";
  }

  if (detailNavState == 2)
  {
    v14 = @"ConversationViewSecondary";
  }

  else
  {
    v14 = v13;
  }

  [v7 setObject:v14 forKeyedSubscript:@"DetailNavigationState"];
  [v7 setObject:dictionaryRepresentation forKeyedSubscript:@"ConversationViewState"];
  [v7 setObject:dictionaryRepresentation2 forKeyedSubscript:@"MessageListState"];
  v15 = [v7 copy];

  return v15;
}

- (void)_loadFromDictionary:(id)dictionary daemonInterface:(id)interface componentFactory:(id)factory
{
  dictionaryCopy = dictionary;
  interfaceCopy = interface;
  factoryCopy = factory;
  if (!dictionaryCopy || ![dictionaryCopy count])
  {
    v12 = +[MailMainSceneState log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100488F24(v12);
    }

    goto LABEL_8;
  }

  v11 = [(MailMainSceneState *)self _versionFromDictionary:dictionaryCopy];
  if (v11 >= 4)
  {
    v12 = +[MailMainSceneState log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100488E9C(v11, v12);
    }

LABEL_8:

    goto LABEL_9;
  }

  v13 = [(MailMainSceneState *)self _favoritesManagerStateFromDictionary:dictionaryCopy version:v11];
  [(MailMainSceneState *)self setFavoritesManagerState:v13];

  [(MailMainSceneState *)self setPrimaryNavState:[(MailMainSceneState *)self _primaryNavigationStateFromDictionary:dictionaryCopy version:v11]];
  [(MailMainSceneState *)self setSupplementaryNavState:[(MailMainSceneState *)self _supplementaryNavigationStateFromDictionary:dictionaryCopy version:v11]];
  [(MailMainSceneState *)self setDetailNavState:[(MailMainSceneState *)self _detailNavigationStateFromDictionary:dictionaryCopy version:v11]];
  v14 = [(MailMainSceneState *)self _conversationStateDictionaryFromDictionary:dictionaryCopy version:v11];
  if ([v14 count])
  {
    v15 = [factoryCopy beginLoadingConversationStateWithDictionary:v14 daemonInterface:interfaceCopy];
    [(MailMainSceneState *)self setConversationViewStateFuture:v15];
  }

  v16 = [(MailMainSceneState *)self _messageListStateDictionaryFromDictionary:dictionaryCopy version:v11];
  if ([v16 count])
  {
    v17 = [factoryCopy beginLoadingMessageListStateWithDictionary:v16 daemonInterface:interfaceCopy];
    [(MailMainSceneState *)self setMessageListStateFuture:v17];
  }

LABEL_9:
}

- (int64_t)_versionFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy ef_objectOfClass:objc_opt_class() forKey:@"StateDictionaryVersion"];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
    v7 = +[MailMainSceneState log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = 134217984;
      v13 = integerValue;
      v8 = "Found dictionary version: %ld";
      v9 = v7;
      v10 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v8, &v12, v10);
    }
  }

  else
  {
    v7 = +[MailMainSceneState log];
    integerValue = 1;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      v8 = "No version was found in dictionary. Assuming v1.";
      integerValue = 1;
      v9 = v7;
      v10 = 2;
      goto LABEL_6;
    }
  }

  return integerValue;
}

- (id)_favoritesManagerStateFromDictionary:(id)dictionary version:(int64_t)version
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy ef_objectOfClass:objc_opt_class() forKey:@"FavoritesManagerState"];

  return v5;
}

- (int64_t)_primaryNavigationStateFromDictionary:(id)dictionary version:(int64_t)version
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy ef_objectOfClass:objc_opt_class() forKey:@"PrimaryNavigationState"];
  v6 = sub_10011F8D0(v5);

  return v6;
}

- (int64_t)_supplementaryNavigationStateFromDictionary:(id)dictionary version:(int64_t)version
{
  dictionaryCopy = dictionary;
  if (version >= 3)
  {
    v7 = [dictionaryCopy ef_objectOfClass:objc_opt_class() forKey:@"SupplementaryNavigationState"];
    v6 = sub_10011F9F4(v7);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)_detailNavigationStateFromDictionary:(id)dictionary version:(int64_t)version
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy ef_objectOfClass:objc_opt_class() forKey:@"DetailNavigationState"];
  v6 = sub_10011FAE0(v5);

  return v6;
}

- (id)_conversationStateDictionaryFromDictionary:(id)dictionary version:(int64_t)version
{
  v4 = [dictionary objectForKeyedSubscript:{@"ConversationViewState", version}];

  return v4;
}

- (id)_messageListStateDictionaryFromDictionary:(id)dictionary version:(int64_t)version
{
  v4 = [dictionary objectForKeyedSubscript:{@"MessageListState", version}];

  return v4;
}

- (ConversationViewRestorationState)conversationViewState
{
  conversationViewStateFuture = [(MailMainSceneState *)self conversationViewStateFuture];
  resultIfAvailable = [conversationViewStateFuture resultIfAvailable];

  return resultIfAvailable;
}

- (void)setConversationViewState:(id)state
{
  stateCopy = state;
  v7 = stateCopy;
  if (stateCopy)
  {
    v5 = [EFFuture futureWithResult:stateCopy];
    [(MailMainSceneState *)self setConversationViewStateFuture:v5];
  }

  else
  {
    v5 = [NSError mf_invalidRestorationDataErrorWithUnderlyingError:0];
    v6 = [EFFuture futureWithError:v5];
    [(MailMainSceneState *)self setConversationViewStateFuture:v6];
  }
}

- (MessageListRestorationState)messageListState
{
  messageListStateFuture = [(MailMainSceneState *)self messageListStateFuture];
  resultIfAvailable = [messageListStateFuture resultIfAvailable];

  return resultIfAvailable;
}

- (void)setMessageListState:(id)state
{
  stateCopy = state;
  v7 = stateCopy;
  if (stateCopy)
  {
    v5 = [EFFuture futureWithResult:stateCopy];
    [(MailMainSceneState *)self setMessageListStateFuture:v5];
  }

  else
  {
    v5 = [NSError mf_invalidRestorationDataErrorWithUnderlyingError:0];
    v6 = [EFFuture futureWithError:v5];
    [(MailMainSceneState *)self setMessageListStateFuture:v6];
  }
}

- (id)beginLoadingConversationStateWithDictionary:(id)dictionary daemonInterface:(id)interface
{
  v4 = [ConversationViewRestorationState loadFromDictionary:dictionary daemonInterface:interface];

  return v4;
}

- (id)beginLoadingMessageListStateWithDictionary:(id)dictionary daemonInterface:(id)interface
{
  v4 = [MessageListRestorationState loadFromDictionary:dictionary daemonInterface:interface];

  return v4;
}

- (NSString)ef_publicDescription
{
  primaryNavState = [(MailMainSceneState *)self primaryNavState];
  v4 = @"MessageList";
  if (primaryNavState <= 2)
  {
    v4 = *(&off_100650C08 + primaryNavState);
  }

  supplementaryNavState = [(MailMainSceneState *)self supplementaryNavState];
  v6 = @"MessageListCollapsedToPrimary";
  if (supplementaryNavState == 1)
  {
    v6 = @"MessageList";
  }

  v21 = v6;
  detailNavState = [(MailMainSceneState *)self detailNavState];
  v8 = @"NoSelection";
  if (detailNavState == 1)
  {
    v8 = @"ConversationViewPrimary";
  }

  if (detailNavState == 2)
  {
    v8 = @"ConversationViewSecondary";
  }

  v20 = v8;
  v9 = objc_opt_class();
  favoritesManagerState = [(MailMainSceneState *)self favoritesManagerState];
  if (favoritesManagerState)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = v10;
  conversationViewState = [(MailMainSceneState *)self conversationViewState];
  if (conversationViewState)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v14 = v13;
  messageListState = [(MailMainSceneState *)self messageListState];
  if (messageListState)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v17 = [NSString stringWithFormat:@"<%@: %p> primaryNav=%@ supplementaryNav=%@ detailNav=%@ hasFavoritesManagerState=%@ hasConversationViewState=%@ hasMessageListState=%@", v9, self, v4, v21, v20, v11, v14, v16];

  return v17;
}

@end