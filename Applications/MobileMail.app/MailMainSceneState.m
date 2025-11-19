@interface MailMainSceneState
+ (id)log;
- (ConversationViewRestorationState)conversationViewState;
- (MailMainSceneState)initWithBuilder:(id)a3;
- (MailMainSceneState)initWithDictionary:(id)a3 daemonInterface:(id)a4 componentFactory:(id)a5;
- (MessageListRestorationState)messageListState;
- (NSString)ef_publicDescription;
- (id)_conversationStateDictionaryFromDictionary:(id)a3 version:(int64_t)a4;
- (id)_favoritesManagerStateFromDictionary:(id)a3 version:(int64_t)a4;
- (id)_messageListStateDictionaryFromDictionary:(id)a3 version:(int64_t)a4;
- (id)beginLoadingConversationStateWithDictionary:(id)a3 daemonInterface:(id)a4;
- (id)beginLoadingMessageListStateWithDictionary:(id)a3 daemonInterface:(id)a4;
- (id)dictionaryRepresentation;
- (int64_t)_detailNavigationStateFromDictionary:(id)a3 version:(int64_t)a4;
- (int64_t)_primaryNavigationStateFromDictionary:(id)a3 version:(int64_t)a4;
- (int64_t)_supplementaryNavigationStateFromDictionary:(id)a3 version:(int64_t)a4;
- (int64_t)_versionFromDictionary:(id)a3;
- (void)_loadFromDictionary:(id)a3 daemonInterface:(id)a4 componentFactory:(id)a5;
- (void)_setDefaultValues;
- (void)setConversationViewState:(id)a3;
- (void)setMessageListState:(id)a3;
@end

@implementation MailMainSceneState

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011EFA4;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD0F8 != -1)
  {
    dispatch_once(&qword_1006DD0F8, block);
  }

  v2 = qword_1006DD0F0;

  return v2;
}

- (MailMainSceneState)initWithDictionary:(id)a3 daemonInterface:(id)a4 componentFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MailMainSceneState;
  v11 = [(MailMainSceneState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(MailMainSceneState *)v11 _setDefaultValues];
    [(MailMainSceneState *)v12 _loadFromDictionary:v8 daemonInterface:v9 componentFactory:v10];
  }

  return v12;
}

- (MailMainSceneState)initWithBuilder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MailMainSceneState;
  v5 = [(MailMainSceneState *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MailMainSceneState *)v5 _setDefaultValues];
    v4[2](v4, v6);
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
  v3 = [(MailMainSceneState *)self conversationViewState];
  v4 = [v3 dictionaryRepresentation];

  v5 = [(MailMainSceneState *)self messageListState];
  v6 = [v5 dictionaryRepresentation];

  v7 = objc_alloc_init(NSMutableDictionary);
  [v7 setObject:&off_100674168 forKeyedSubscript:@"StateDictionaryVersion"];
  v8 = [(MailMainSceneState *)self favoritesManagerState];
  [v7 setObject:v8 forKeyedSubscript:@"FavoritesManagerState"];

  v9 = [(MailMainSceneState *)self primaryNavState];
  v10 = @"MessageList";
  if (v9 <= 2)
  {
    v10 = *(&off_100650C08 + v9);
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
  v12 = [(MailMainSceneState *)self detailNavState];
  v13 = @"NoSelection";
  if (v12 == 1)
  {
    v13 = @"ConversationViewPrimary";
  }

  if (v12 == 2)
  {
    v14 = @"ConversationViewSecondary";
  }

  else
  {
    v14 = v13;
  }

  [v7 setObject:v14 forKeyedSubscript:@"DetailNavigationState"];
  [v7 setObject:v4 forKeyedSubscript:@"ConversationViewState"];
  [v7 setObject:v6 forKeyedSubscript:@"MessageListState"];
  v15 = [v7 copy];

  return v15;
}

- (void)_loadFromDictionary:(id)a3 daemonInterface:(id)a4 componentFactory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 || ![v8 count])
  {
    v12 = +[MailMainSceneState log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100488F24(v12);
    }

    goto LABEL_8;
  }

  v11 = [(MailMainSceneState *)self _versionFromDictionary:v8];
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

  v13 = [(MailMainSceneState *)self _favoritesManagerStateFromDictionary:v8 version:v11];
  [(MailMainSceneState *)self setFavoritesManagerState:v13];

  [(MailMainSceneState *)self setPrimaryNavState:[(MailMainSceneState *)self _primaryNavigationStateFromDictionary:v8 version:v11]];
  [(MailMainSceneState *)self setSupplementaryNavState:[(MailMainSceneState *)self _supplementaryNavigationStateFromDictionary:v8 version:v11]];
  [(MailMainSceneState *)self setDetailNavState:[(MailMainSceneState *)self _detailNavigationStateFromDictionary:v8 version:v11]];
  v14 = [(MailMainSceneState *)self _conversationStateDictionaryFromDictionary:v8 version:v11];
  if ([v14 count])
  {
    v15 = [v10 beginLoadingConversationStateWithDictionary:v14 daemonInterface:v9];
    [(MailMainSceneState *)self setConversationViewStateFuture:v15];
  }

  v16 = [(MailMainSceneState *)self _messageListStateDictionaryFromDictionary:v8 version:v11];
  if ([v16 count])
  {
    v17 = [v10 beginLoadingMessageListStateWithDictionary:v16 daemonInterface:v9];
    [(MailMainSceneState *)self setMessageListStateFuture:v17];
  }

LABEL_9:
}

- (int64_t)_versionFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 ef_objectOfClass:objc_opt_class() forKey:@"StateDictionaryVersion"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
    v7 = +[MailMainSceneState log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = 134217984;
      v13 = v6;
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
    v6 = 1;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      v8 = "No version was found in dictionary. Assuming v1.";
      v6 = 1;
      v9 = v7;
      v10 = 2;
      goto LABEL_6;
    }
  }

  return v6;
}

- (id)_favoritesManagerStateFromDictionary:(id)a3 version:(int64_t)a4
{
  v4 = a3;
  v5 = [v4 ef_objectOfClass:objc_opt_class() forKey:@"FavoritesManagerState"];

  return v5;
}

- (int64_t)_primaryNavigationStateFromDictionary:(id)a3 version:(int64_t)a4
{
  v4 = a3;
  v5 = [v4 ef_objectOfClass:objc_opt_class() forKey:@"PrimaryNavigationState"];
  v6 = sub_10011F8D0(v5);

  return v6;
}

- (int64_t)_supplementaryNavigationStateFromDictionary:(id)a3 version:(int64_t)a4
{
  v5 = a3;
  if (a4 >= 3)
  {
    v7 = [v5 ef_objectOfClass:objc_opt_class() forKey:@"SupplementaryNavigationState"];
    v6 = sub_10011F9F4(v7);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)_detailNavigationStateFromDictionary:(id)a3 version:(int64_t)a4
{
  v4 = a3;
  v5 = [v4 ef_objectOfClass:objc_opt_class() forKey:@"DetailNavigationState"];
  v6 = sub_10011FAE0(v5);

  return v6;
}

- (id)_conversationStateDictionaryFromDictionary:(id)a3 version:(int64_t)a4
{
  v4 = [a3 objectForKeyedSubscript:{@"ConversationViewState", a4}];

  return v4;
}

- (id)_messageListStateDictionaryFromDictionary:(id)a3 version:(int64_t)a4
{
  v4 = [a3 objectForKeyedSubscript:{@"MessageListState", a4}];

  return v4;
}

- (ConversationViewRestorationState)conversationViewState
{
  v2 = [(MailMainSceneState *)self conversationViewStateFuture];
  v3 = [v2 resultIfAvailable];

  return v3;
}

- (void)setConversationViewState:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = [EFFuture futureWithResult:v4];
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
  v2 = [(MailMainSceneState *)self messageListStateFuture];
  v3 = [v2 resultIfAvailable];

  return v3;
}

- (void)setMessageListState:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = [EFFuture futureWithResult:v4];
    [(MailMainSceneState *)self setMessageListStateFuture:v5];
  }

  else
  {
    v5 = [NSError mf_invalidRestorationDataErrorWithUnderlyingError:0];
    v6 = [EFFuture futureWithError:v5];
    [(MailMainSceneState *)self setMessageListStateFuture:v6];
  }
}

- (id)beginLoadingConversationStateWithDictionary:(id)a3 daemonInterface:(id)a4
{
  v4 = [ConversationViewRestorationState loadFromDictionary:a3 daemonInterface:a4];

  return v4;
}

- (id)beginLoadingMessageListStateWithDictionary:(id)a3 daemonInterface:(id)a4
{
  v4 = [MessageListRestorationState loadFromDictionary:a3 daemonInterface:a4];

  return v4;
}

- (NSString)ef_publicDescription
{
  v3 = [(MailMainSceneState *)self primaryNavState];
  v4 = @"MessageList";
  if (v3 <= 2)
  {
    v4 = *(&off_100650C08 + v3);
  }

  v5 = [(MailMainSceneState *)self supplementaryNavState];
  v6 = @"MessageListCollapsedToPrimary";
  if (v5 == 1)
  {
    v6 = @"MessageList";
  }

  v21 = v6;
  v7 = [(MailMainSceneState *)self detailNavState];
  v8 = @"NoSelection";
  if (v7 == 1)
  {
    v8 = @"ConversationViewPrimary";
  }

  if (v7 == 2)
  {
    v8 = @"ConversationViewSecondary";
  }

  v20 = v8;
  v9 = objc_opt_class();
  v19 = [(MailMainSceneState *)self favoritesManagerState];
  if (v19)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = v10;
  v12 = [(MailMainSceneState *)self conversationViewState];
  if (v12)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v14 = v13;
  v15 = [(MailMainSceneState *)self messageListState];
  if (v15)
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