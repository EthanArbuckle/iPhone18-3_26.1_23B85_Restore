@interface NSUserActivity
+ (BOOL)_currentUserActivityUUIDWithOptions:(id)options completionHandler:(id)handler;
+ (BOOL)_supportsUserActivityAppLinks;
+ (id)_currentUserActivityUUID;
+ (id)_fetchUserActivityWithUUID:(id)d intervalToWaitForDocumentSynchronizationToComplete:(double)complete completionHandler:(id)handler;
+ (id)_userFacingErrorForLaunchServicesError:(id)error userInfo:(id)info;
+ (void)_fetchUserActivityWithUUID:(id)d completionHandler:(id)handler;
+ (void)_registerUserActivityType:(id)type dynamicActivityType:(id)activityType;
+ (void)_unregisterUserActivityType:(id)type dynamicActivityType:(id)activityType;
+ (void)deleteAllSavedUserActivitiesWithCompletionHandler:(void *)handler;
+ (void)deleteSavedUserActivitiesWithPersistentIdentifiers:(NSArray *)persistentIdentifiers completionHandler:(void *)handler;
- (BOOL)_createUserActivityDataWithOptions:(id)options completionHandler:(id)handler;
- (BOOL)_createUserActivityStringsWithOptions:(id)options completionHandler:(id)handler;
- (BOOL)isEligibleForHandoff;
- (BOOL)isEligibleForPrediction;
- (BOOL)isEligibleForPublicIndexing;
- (BOOL)isEligibleForSearch;
- (BOOL)isEqual:(id)equal;
- (BOOL)needsSave;
- (BOOL)supportsContinuationStreams;
- (CSSearchableItemAttributeSet)contentAttributeSet;
- (NSDate)expirationDate;
- (NSDictionary)_options;
- (NSDictionary)userInfo;
- (NSSet)keywords;
- (NSSet)requiredUserInfoKeys;
- (NSString)_teamIdentifier;
- (NSString)activityType;
- (NSString)targetContentIdentifier;
- (NSString)title;
- (NSURL)referrerURL;
- (NSURL)webpageURL;
- (NSUUID)_uniqueIdentifier;
- (NSUserActivity)initWithActivityType:(NSString *)activityType;
- (NSUserActivity)initWithInternalUserActivity:(id)activity;
- (NSUserActivity)initWithTypeIdentifier:(id)identifier;
- (NSUserActivityPersistentIdentifier)persistentIdentifier;
- (id)_determineMatchingApplicationBundleIdentifierWithOptions:(id)options;
- (id)_initWithTypeIdentifier:(id)identifier suggestedActionType:(int64_t)type options:(id)options;
- (id)_initWithUserActivityData:(id)data;
- (id)_initWithUserActivityData:(id)data options:(id)options;
- (id)_initWithUserActivityStrings:(id)strings secondaryString:(id)string optionalData:(id)data;
- (id)_initWithUserActivityStrings:(id)strings secondaryString:(id)string optionalData:(id)data options:(id)options;
- (id)_initWithUserActivityType:(id)type dynamicActivityType:(id)activityType options:(id)options;
- (id)contentUserAction;
- (id)typeIdentifier;
- (id)webPageURL;
- (int64_t)_suggestedActionType;
- (unint64_t)hash;
- (void)_addKeywordsFromArray:(id)array;
- (void)_prepareUserActivityForLaunchingWithOptions:(id)options completionHandler:(id)handler;
- (void)_resignCurrent;
- (void)_setFrameworkDelegate:(id)delegate;
- (void)_setOptions:(id)options;
- (void)addUserInfoEntriesFromDictionary:(NSDictionary *)otherDictionary;
- (void)becomeCurrent;
- (void)dealloc;
- (void)didReceiveInputStream:(id)stream outputStream:(id)outputStream;
- (void)didSynchronizeActivity;
- (void)getContinuationStreamsWithCompletionHandler:(void *)completionHandler;
- (void)invalidate;
- (void)resignCurrent;
- (void)setContentAttributeSet:(CSSearchableItemAttributeSet *)contentAttributeSet;
- (void)setContentUserAction:(id)action;
- (void)setDelegate:(id)delegate;
- (void)setEligibleForHandoff:(BOOL)eligibleForHandoff;
- (void)setEligibleForPrediction:(BOOL)eligibleForPrediction;
- (void)setEligibleForPublicIndexing:(BOOL)eligibleForPublicIndexing;
- (void)setEligibleForSearch:(BOOL)eligibleForSearch;
- (void)setExpirationDate:(NSDate *)expirationDate;
- (void)setKeywords:(NSSet *)keywords;
- (void)setNeedsSave:(BOOL)needsSave;
- (void)setPersistentIdentifier:(NSUserActivityPersistentIdentifier)persistentIdentifier;
- (void)setReferrerURL:(NSURL *)referrerURL;
- (void)setRequiredUserInfoKeys:(NSSet *)requiredUserInfoKeys;
- (void)setSupportsContinuationStreams:(BOOL)supportsContinuationStreams;
- (void)setTargetContentIdentifier:(NSString *)targetContentIdentifier;
- (void)setTitle:(NSString *)title;
- (void)setUserInfo:(NSDictionary *)userInfo;
- (void)setWebPageURL:(id)l;
- (void)setWebpageURL:(NSURL *)webpageURL;
- (void)willSynchronizeActivity;
@end

@implementation NSUserActivity

- (NSDictionary)userInfo
{
  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)_internalUserActivity userInfo];
}

- (BOOL)isEligibleForPrediction
{
  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)_internalUserActivity isEligibleForPrediction];
}

- (NSUUID)_uniqueIdentifier
{
  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)_internalUserActivity uniqueIdentifier];
}

- (NSString)activityType
{
  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)_internalUserActivity typeIdentifier];
}

- (NSString)title
{
  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)_internalUserActivity title];
}

- (BOOL)isEligibleForSearch
{
  if (qword_1ED43FE38 != -1)
  {
    dispatch_once(&qword_1ED43FE38, &__block_literal_global_311);
  }

  if (_MergedGlobals_140 != 1)
  {
    return 0;
  }

  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)_internalUserActivity isEligibleForSearch];
}

- (BOOL)isEligibleForHandoff
{
  if (qword_1ED43FE38 != -1)
  {
    dispatch_once(&qword_1ED43FE38, &__block_literal_global_311);
  }

  if (_MergedGlobals_140 != 1)
  {
    return 1;
  }

  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)_internalUserActivity isEligibleForHandoff];
}

- (BOOL)isEligibleForPublicIndexing
{
  if (qword_1ED43FE38 != -1)
  {
    dispatch_once(&qword_1ED43FE38, &__block_literal_global_311);
  }

  if (_MergedGlobals_140 != 1)
  {
    return 0;
  }

  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)_internalUserActivity isEligibleForPublicIndexing];
}

- (void)becomeCurrent
{
  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)_internalUserActivity becomeCurrent];
}

- (NSURL)webpageURL
{
  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)_internalUserActivity webpageURL];
}

- (NSUserActivityPersistentIdentifier)persistentIdentifier
{
  [(NSUserActivity *)self _internalUserActivity];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)_internalUserActivity persistentIdentifier];
}

- (void)willSynchronizeActivity
{
  _frameworkDelegate = [(NSUserActivity *)self _frameworkDelegate];
  delegate = [(NSUserActivity *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(NSUserActivityDelegate *)_frameworkDelegate userActivityWillSave:self];
  }

  if (objc_opt_respondsToSelector())
  {

    [delegate userActivityWillSave:self];
  }
}

- (void)resignCurrent
{
  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)_internalUserActivity resignCurrent];
}

+ (id)_currentUserActivityUUID
{
  if (qword_1ED43FE38 != -1)
  {
    dispatch_once(&qword_1ED43FE38, &__block_literal_global_311);
  }

  if (_MergedGlobals_140 != 1)
  {
    return 0;
  }

  getUAUserActivityClass();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  UAUserActivityClass = getUAUserActivityClass();

  return [UAUserActivityClass currentUserActivityUUID];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  objc_storeWeak(&self->_delegate, 0);
  objc_storeWeak(&self->_frameworkDelegate, 0);
  [self->_internal invalidate];

  v3.receiver = self;
  v3.super_class = NSUserActivity;
  [(NSUserActivity *)&v3 dealloc];
}

- (int64_t)_suggestedActionType
{
  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)_internalUserActivity suggestedActionType];
}

- (NSSet)keywords
{
  if (qword_1ED43FE38 != -1)
  {
    dispatch_once(&qword_1ED43FE38, &__block_literal_global_311);
  }

  if (_MergedGlobals_140 != 1)
  {
    return 0;
  }

  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)_internalUserActivity keywords];
}

- (void)invalidate
{
  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)_internalUserActivity invalidate];
}

- (NSUserActivity)initWithInternalUserActivity:(id)activity
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSUserActivity;
  v4 = [(NSUserActivity *)&v6 init];
  if (v4)
  {
    v4->_internal = activity;
    [(UAUserActivity *)[(NSUserActivity *)v4 _internalUserActivity] setDelegate:v4];
    [(UAUserActivity *)[(NSUserActivity *)v4 _internalUserActivity] setParentUserActivity:v4];
  }

  return v4;
}

- (NSUserActivity)initWithActivityType:(NSString *)activityType
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSUserActivity;
  v4 = [(NSUserActivity *)&v7 init];
  if (v4)
  {
    v5 = [objc_alloc(getUAUserActivityClass()) initWithTypeIdentifier:activityType options:0];
    v4->_internal = v5;
    if (v5)
    {
      [(UAUserActivity *)[(NSUserActivity *)v4 _internalUserActivity] setParentUserActivity:v4];
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)setTitle:(NSString *)title
{
  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)_internalUserActivity setTitle:title];
}

- (void)setUserInfo:(NSDictionary *)userInfo
{
  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)_internalUserActivity setUserInfo:userInfo];
}

- (void)addUserInfoEntriesFromDictionary:(NSDictionary *)otherDictionary
{
  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)_internalUserActivity addUserInfoEntriesFromDictionary:otherDictionary];
}

- (BOOL)needsSave
{
  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)_internalUserActivity needsSave];
}

- (void)setNeedsSave:(BOOL)needsSave
{
  v3 = needsSave;
  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)_internalUserActivity setNeedsSave:v3];
}

- (void)setWebpageURL:(NSURL *)webpageURL
{
  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)_internalUserActivity setWebpageURL:webpageURL];
}

- (NSURL)referrerURL
{
  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)_internalUserActivity referrerURL];
}

- (void)setReferrerURL:(NSURL *)referrerURL
{
  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)_internalUserActivity setReferrerURL:referrerURL];
}

- (id)contentUserAction
{
  if (qword_1ED43FE38 != -1)
  {
    dispatch_once(&qword_1ED43FE38, &__block_literal_global_311);
  }

  if (_MergedGlobals_140 != 1)
  {
    return 0;
  }

  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)_internalUserActivity contentUserAction];
}

- (void)setContentUserAction:(id)action
{
  if (qword_1ED43FE38 != -1)
  {
    dispatch_once(&qword_1ED43FE38, &__block_literal_global_311);
  }

  if (_MergedGlobals_140 == 1)
  {
    _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

    [(UAUserActivity *)_internalUserActivity setContentUserAction:action];
  }
}

- (void)setDelegate:(id)delegate
{
  selfCopy = self;
  objc_storeWeak(&self->_delegate, delegate);
  if (([(UAUserActivity *)[(NSUserActivity *)selfCopy _internalUserActivity] isInvalidated]& 1) == 0)
  {
    _internalUserActivity = [(NSUserActivity *)selfCopy _internalUserActivity];
    if (!delegate && ![(NSUserActivity *)selfCopy _frameworkDelegate])
    {
      selfCopy = 0;
    }

    [(UAUserActivity *)_internalUserActivity setDelegate:selfCopy];
  }
}

- (BOOL)supportsContinuationStreams
{
  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)_internalUserActivity supportsContinuationStreams];
}

- (void)setSupportsContinuationStreams:(BOOL)supportsContinuationStreams
{
  v3 = supportsContinuationStreams;
  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)_internalUserActivity setSupportsContinuationStreams:v3];
}

- (void)getContinuationStreamsWithCompletionHandler:(void *)completionHandler
{
  v5[5] = *MEMORY[0x1E69E9840];
  if (completionHandler)
  {
    _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __62__NSUserActivity_getContinuationStreamsWithCompletionHandler___block_invoke;
    v5[3] = &unk_1E69F6EB8;
    v5[4] = completionHandler;
    [(UAUserActivity *)_internalUserActivity getContinuationStreamsWithCompletionHandler:v5];
  }
}

uint64_t __62__NSUserActivity_getContinuationStreamsWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [NSUserActivity _userFacingErrorForLaunchServicesError:a4 userInfo:0];
  v5 = *(*(a1 + 32) + 16);

  return v5();
}

- (NSSet)requiredUserInfoKeys
{
  if (qword_1ED43FE38 != -1)
  {
    dispatch_once(&qword_1ED43FE38, &__block_literal_global_311);
  }

  if (_MergedGlobals_140 != 1)
  {
    return 0;
  }

  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)_internalUserActivity requiredUserInfoKeys];
}

- (void)setRequiredUserInfoKeys:(NSSet *)requiredUserInfoKeys
{
  if (qword_1ED43FE38 != -1)
  {
    dispatch_once(&qword_1ED43FE38, &__block_literal_global_311);
  }

  if (_MergedGlobals_140 == 1)
  {
    _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

    [(UAUserActivity *)_internalUserActivity setRequiredUserInfoKeys:requiredUserInfoKeys];
  }
}

- (NSDate)expirationDate
{
  if (qword_1ED43FE38 != -1)
  {
    dispatch_once(&qword_1ED43FE38, &__block_literal_global_311);
  }

  if (_MergedGlobals_140 != 1)
  {
    return 0;
  }

  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)_internalUserActivity expirationDate];
}

- (void)setExpirationDate:(NSDate *)expirationDate
{
  if (qword_1ED43FE38 != -1)
  {
    dispatch_once(&qword_1ED43FE38, &__block_literal_global_311);
  }

  if (_MergedGlobals_140 == 1)
  {
    _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

    [(UAUserActivity *)_internalUserActivity setExpirationDate:expirationDate];
  }
}

- (void)setKeywords:(NSSet *)keywords
{
  if (qword_1ED43FE38 != -1)
  {
    dispatch_once(&qword_1ED43FE38, &__block_literal_global_311);
  }

  if (_MergedGlobals_140 == 1)
  {
    _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

    [(UAUserActivity *)_internalUserActivity setKeywords:keywords];
  }
}

- (void)setEligibleForHandoff:(BOOL)eligibleForHandoff
{
  v3 = eligibleForHandoff;
  if (qword_1ED43FE38 != -1)
  {
    dispatch_once(&qword_1ED43FE38, &__block_literal_global_311);
  }

  if (_MergedGlobals_140 == 1)
  {
    _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

    [(UAUserActivity *)_internalUserActivity setEligibleForHandoff:v3];
  }
}

- (void)setEligibleForSearch:(BOOL)eligibleForSearch
{
  v3 = eligibleForSearch;
  if (qword_1ED43FE38 != -1)
  {
    dispatch_once(&qword_1ED43FE38, &__block_literal_global_311);
  }

  if (_MergedGlobals_140 == 1)
  {
    _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

    [(UAUserActivity *)_internalUserActivity setEligibleForSearch:v3];
  }
}

- (void)setEligibleForPublicIndexing:(BOOL)eligibleForPublicIndexing
{
  v3 = eligibleForPublicIndexing;
  if (qword_1ED43FE38 != -1)
  {
    dispatch_once(&qword_1ED43FE38, &__block_literal_global_311);
  }

  if (_MergedGlobals_140 == 1)
  {
    _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

    [(UAUserActivity *)_internalUserActivity setEligibleForPublicIndexing:v3];
  }
}

- (void)setEligibleForPrediction:(BOOL)eligibleForPrediction
{
  v3 = eligibleForPrediction;
  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)_internalUserActivity setEligibleForPrediction:v3];
}

- (void)setPersistentIdentifier:(NSUserActivityPersistentIdentifier)persistentIdentifier
{
  [(NSUserActivity *)self _internalUserActivity];
  if (objc_opt_respondsToSelector())
  {
    _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

    [(UAUserActivity *)_internalUserActivity setPersistentIdentifier:persistentIdentifier];
  }
}

+ (void)deleteSavedUserActivitiesWithPersistentIdentifiers:(NSArray *)persistentIdentifiers completionHandler:(void *)handler
{
  if (getUAUserActivityClass() && (getUAUserActivityClass(), (objc_opt_respondsToSelector() & 1) != 0))
  {
    UAUserActivityClass = getUAUserActivityClass();

    [UAUserActivityClass deleteSavedUserActivitiesWithPersistentIdentifiers:persistentIdentifiers completionHandler:handler];
  }

  else if (handler)
  {
    v7 = *(handler + 2);

    v7(handler);
  }
}

+ (void)deleteAllSavedUserActivitiesWithCompletionHandler:(void *)handler
{
  if (getUAUserActivityClass() && (getUAUserActivityClass(), (objc_opt_respondsToSelector() & 1) != 0))
  {
    UAUserActivityClass = getUAUserActivityClass();

    [UAUserActivityClass deleteAllSavedUserActivitiesWithCompletionHandler:handler];
  }

  else if (handler)
  {
    v5 = *(handler + 2);

    v5(handler);
  }
}

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  if (self == equal)
  {
    return 1;
  }

  _uniqueIdentifier = [(NSUserActivity *)self _uniqueIdentifier];
  _uniqueIdentifier2 = [equal _uniqueIdentifier];

  return [(NSUUID *)_uniqueIdentifier isEqual:_uniqueIdentifier2];
}

- (unint64_t)hash
{
  _uniqueIdentifier = [(NSUserActivity *)self _uniqueIdentifier];

  return [(NSUUID *)_uniqueIdentifier hash];
}

- (NSString)targetContentIdentifier
{
  if (![(NSUserActivity *)self _internalUserActivity])
  {
    return 0;
  }

  [(NSUserActivity *)self _internalUserActivity];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)_internalUserActivity targetContentIdentifier];
}

- (void)setTargetContentIdentifier:(NSString *)targetContentIdentifier
{
  if ([(NSUserActivity *)self _internalUserActivity])
  {
    [(NSUserActivity *)self _internalUserActivity];
    if (objc_opt_respondsToSelector())
    {
      _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

      [(UAUserActivity *)_internalUserActivity setTargetContentIdentifier:targetContentIdentifier];
    }
  }
}

- (id)typeIdentifier
{
  if (typeIdentifier_sOnce != -1)
  {
    dispatch_once(&typeIdentifier_sOnce, &__block_literal_global_66);
  }

  return [(NSUserActivity *)self activityType];
}

- (NSUserActivity)initWithTypeIdentifier:(id)identifier
{
  if (initWithTypeIdentifier__sOnce != -1)
  {
    dispatch_once(&initWithTypeIdentifier__sOnce, &__block_literal_global_21);
  }

  return [(NSUserActivity *)self initWithActivityType:identifier];
}

- (id)webPageURL
{
  if (webPageURL_sOnce != -1)
  {
    dispatch_once(&webPageURL_sOnce, &__block_literal_global_26);
  }

  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)_internalUserActivity webpageURL];
}

- (void)setWebPageURL:(id)l
{
  if (setWebPageURL__sOnce != -1)
  {
    dispatch_once(&setWebPageURL__sOnce, &__block_literal_global_31);
  }

  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)_internalUserActivity setWebpageURL:l];
}

- (void)didSynchronizeActivity
{
  _frameworkDelegate = [(NSUserActivity *)self _frameworkDelegate];
  delegate = [(NSUserActivity *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(NSUserActivityDelegate *)_frameworkDelegate userActivityWasContinued:self];
  }

  if (objc_opt_respondsToSelector())
  {

    [delegate userActivityWasContinued:self];
  }
}

- (void)didReceiveInputStream:(id)stream outputStream:(id)outputStream
{
  _frameworkDelegate = [(NSUserActivity *)self _frameworkDelegate];
  delegate = [(NSUserActivity *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(NSUserActivityDelegate *)_frameworkDelegate userActivity:self didReceiveInputStream:stream outputStream:outputStream];
  }

  if (objc_opt_respondsToSelector())
  {

    [delegate userActivity:self didReceiveInputStream:stream outputStream:outputStream];
  }
}

- (void)_addKeywordsFromArray:(id)array
{
  if (qword_1ED43FE38 != -1)
  {
    dispatch_once(&qword_1ED43FE38, &__block_literal_global_311);
  }

  if (_MergedGlobals_140 == 1)
  {
    _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

    [(UAUserActivity *)_internalUserActivity addKeywordsFromArray:array];
  }
}

+ (BOOL)_supportsUserActivityAppLinks
{
  if (qword_1ED43FE38 != -1)
  {
    dispatch_once(&qword_1ED43FE38, &__block_literal_global_311);
  }

  return _MergedGlobals_140;
}

- (id)_initWithUserActivityData:(id)data
{
  v4 = [objc_alloc(getUAUserActivityClass()) initWithUserActivityData:data options:0];
  if (!v4 || (v5 = v4, self = [(NSUserActivity *)self initWithInternalUserActivity:v4], v5, !self))
  {
    [(NSUserActivity *)self dealloc];
    return 0;
  }

  return self;
}

- (id)_initWithUserActivityData:(id)data options:(id)options
{
  v5 = [objc_alloc(getUAUserActivityClass()) initWithUserActivityData:data options:options];
  if (!v5 || (v6 = v5, self = [(NSUserActivity *)self initWithInternalUserActivity:v5], v6, !self))
  {
    [(NSUserActivity *)self dealloc];
    return 0;
  }

  return self;
}

- (id)_initWithUserActivityStrings:(id)strings secondaryString:(id)string optionalData:(id)data
{
  v6 = [objc_alloc(getUAUserActivityClass()) initWithUserActivityStrings:strings optionalString:string tertiaryData:data options:0];
  if (!v6 || (v7 = v6, self = [(NSUserActivity *)self initWithInternalUserActivity:v6], v7, !self))
  {
    [(NSUserActivity *)self dealloc];
    return 0;
  }

  return self;
}

- (id)_initWithUserActivityStrings:(id)strings secondaryString:(id)string optionalData:(id)data options:(id)options
{
  v7 = [objc_alloc(getUAUserActivityClass()) initWithUserActivityStrings:strings optionalString:string tertiaryData:data options:options];
  if (!v7 || (v8 = v7, self = [(NSUserActivity *)self initWithInternalUserActivity:v7], v8, !self))
  {
    [(NSUserActivity *)self dealloc];
    return 0;
  }

  return self;
}

- (BOOL)_createUserActivityDataWithOptions:(id)options completionHandler:(id)handler
{
  [(NSUserActivity *)self _internalUserActivity];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)_internalUserActivity createUserActivityDataWithSaving:1 options:options completionHandler:handler];
}

- (BOOL)_createUserActivityStringsWithOptions:(id)options completionHandler:(id)handler
{
  [(NSUserActivity *)self _internalUserActivity];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)_internalUserActivity createUserActivityStringsWithSaving:1 options:options completionHandler:handler];
}

- (void)_prepareUserActivityForLaunchingWithOptions:(id)options completionHandler:(id)handler
{
  [(NSUserActivity *)self _internalUserActivity];
  if (objc_opt_respondsToSelector())
  {
    _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

    [(UAUserActivity *)_internalUserActivity prepareUserActivityForLaunchingWithOptions:options completionHandler:handler];
  }
}

- (NSString)_teamIdentifier
{
  [(NSUserActivity *)self _internalUserActivity];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)_internalUserActivity teamID];
}

+ (BOOL)_currentUserActivityUUIDWithOptions:(id)options completionHandler:(id)handler
{
  getUAUserActivityClass();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  UAUserActivityClass = getUAUserActivityClass();

  return [UAUserActivityClass currentUserActivityUUIDWithOptions:options completionHandler:handler];
}

- (id)_determineMatchingApplicationBundleIdentifierWithOptions:(id)options
{
  [(NSUserActivity *)self _internalUserActivity];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)_internalUserActivity determineMatchingApplicationBundleIdentfierWithOptions:options];
}

+ (id)_fetchUserActivityWithUUID:(id)d intervalToWaitForDocumentSynchronizationToComplete:(double)complete completionHandler:(id)handler
{
  v11[6] = *MEMORY[0x1E69E9840];
  getUAUserActivityClass();
  if (objc_opt_respondsToSelector())
  {
    UAUserActivityClass = getUAUserActivityClass();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __137__NSUserActivity_NSUserActivityPrivate___fetchUserActivityWithUUID_intervalToWaitForDocumentSynchronizationToComplete_completionHandler___block_invoke;
    v11[3] = &unk_1E69F6EE0;
    v11[4] = d;
    v11[5] = handler;
    return [UAUserActivityClass fetchUserActivityWithUUID:d intervalToWaitForDocumentSynchronizationToComplete:v11 completionHandler:complete];
  }

  else
  {
    [self _fetchUserActivityWithUUID:d completionHandler:handler];
    return 0;
  }
}

void __137__NSUserActivity_NSUserActivityPrivate___fetchUserActivityWithUUID_intervalToWaitForDocumentSynchronizationToComplete_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = [[NSUserActivity alloc] initWithInternalUserActivity:a2];
    v7 = 0;
  }

  else
  {
    if (a3)
    {
      v5 = [NSUserActivity _userFacingErrorForLaunchServicesError:a3 userInfo:0];
    }

    else
    {
      v5 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3328 userInfo:0];
    }

    v7 = v5;
    v4 = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v4, v7);
  }

  getUAUserActivityClass();
  if (objc_opt_respondsToSelector())
  {
    [getUAUserActivityClass() endUserActivityUIProgressForUUID:*(a1 + 32)];
  }
}

+ (void)_fetchUserActivityWithUUID:(id)d completionHandler:(id)handler
{
  v7[6] = *MEMORY[0x1E69E9840];
  getUAUserActivityClass();
  if (objc_opt_respondsToSelector())
  {
    [getUAUserActivityClass() showUserActivityUIProgressForUUID:d];
  }

  UAUserActivityClass = getUAUserActivityClass();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__NSUserActivity_NSUserActivityPrivate___fetchUserActivityWithUUID_completionHandler___block_invoke;
  v7[3] = &unk_1E69F6EE0;
  v7[4] = d;
  v7[5] = handler;
  [UAUserActivityClass fetchUserActivityWithUUID:d completionHandler:v7];
}

void __86__NSUserActivity_NSUserActivityPrivate___fetchUserActivityWithUUID_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = [[NSUserActivity alloc] initWithInternalUserActivity:a2];
    v7 = 0;
  }

  else
  {
    if (a3)
    {
      v5 = [NSUserActivity _userFacingErrorForLaunchServicesError:a3 userInfo:0];
    }

    else
    {
      v5 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3328 userInfo:0];
    }

    v7 = v5;
    v4 = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v4, v7);
  }

  getUAUserActivityClass();
  if (objc_opt_respondsToSelector())
  {
    [getUAUserActivityClass() endUserActivityUIProgressForUUID:*(a1 + 32)];
  }
}

+ (void)_registerUserActivityType:(id)type dynamicActivityType:(id)activityType
{
  getUAUserActivityClass();
  if (objc_opt_respondsToSelector())
  {
    UAUserActivityClass = getUAUserActivityClass();

    [UAUserActivityClass addDynamicUserActivity:activityType matching:type];
  }
}

+ (void)_unregisterUserActivityType:(id)type dynamicActivityType:(id)activityType
{
  getUAUserActivityClass();
  if (objc_opt_respondsToSelector())
  {
    UAUserActivityClass = getUAUserActivityClass();

    [UAUserActivityClass removeDynamicUserActivity:activityType matching:type];
  }
}

- (id)_initWithTypeIdentifier:(id)identifier suggestedActionType:(int64_t)type options:(id)options
{
  v6 = [objc_alloc(getUAUserActivityClass()) initWithTypeIdentifier:identifier suggestedActionType:type options:options];

  return [(NSUserActivity *)self initWithInternalUserActivity:v6];
}

- (id)_initWithUserActivityType:(id)type dynamicActivityType:(id)activityType options:(id)options
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSUserActivity;
  v8 = [(NSUserActivity *)&v10 init];
  if (v8 && [getUAUserActivityClass() instancesRespondToSelector:sel_initWithTypeIdentifier_dynamicIdentifier_options_])
  {
    v8->_internal = [objc_alloc(getUAUserActivityClass()) initWithTypeIdentifier:type dynamicIdentifier:activityType options:options];
  }

  return v8;
}

- (NSDictionary)_options
{
  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)_internalUserActivity options];
}

- (void)_setOptions:(id)options
{
  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)_internalUserActivity setOptions:options];
}

- (void)_setFrameworkDelegate:(id)delegate
{
  objc_storeWeak(&self->_frameworkDelegate, delegate);
  if (([(UAUserActivity *)[(NSUserActivity *)self _internalUserActivity] isInvalidated]& 1) == 0)
  {
    _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];
    if (delegate | [(NSUserActivity *)self delegate])
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    [(UAUserActivity *)_internalUserActivity setDelegate:selfCopy];
  }
}

- (void)_resignCurrent
{
  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)_internalUserActivity resignCurrent];
}

+ (id)_userFacingErrorForLaunchServicesError:(id)error userInfo:(id)info
{
  if (!error)
  {
    return error;
  }

  domain = [error domain];
  code = [error code];
  if (![domain isEqual:getUAContinuityErrorDomain()])
  {
    if ([domain isEqual:@"NSPOSIXErrorDomain"])
    {
      v10 = code - 45;
      if ((code - 45) <= 0x21)
      {
        if (((1 << v10) & 0x8060) != 0)
        {
          goto LABEL_19;
        }

        if (((1 << v10) & 0x200000001) != 0)
        {
          v9 = 3328;
          if (@"NSCocoaErrorDomain")
          {
            goto LABEL_22;
          }

          return error;
        }
      }

      if (code == 2)
      {
LABEL_19:
        v9 = 4609;
        if (@"NSCocoaErrorDomain")
        {
          goto LABEL_22;
        }

        return error;
      }
    }

    else if ([domain isEqual:@"NSCocoaErrorDomain"])
    {
      return error;
    }

    v9 = 4608;
    if (@"NSCocoaErrorDomain")
    {
      goto LABEL_22;
    }

    return error;
  }

  v8 = 4608;
  if (code == -110)
  {
    v8 = 4611;
  }

  if (code == -109)
  {
    v9 = 4610;
  }

  else
  {
    v9 = v8;
  }

  if (!@"NSCocoaErrorDomain")
  {
    return error;
  }

LABEL_22:
  v12 = [info mutableCopy];
  if (v12)
  {
    dictionary = v12;
LABEL_25:
    [dictionary setObject:error forKey:@"NSUnderlyingError"];
    goto LABEL_26;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (dictionary)
  {
    goto LABEL_25;
  }

LABEL_26:

  return [NSError errorWithDomain:@"NSCocoaErrorDomain" code:v9 userInfo:dictionary];
}

- (CSSearchableItemAttributeSet)contentAttributeSet
{
  [(NSUserActivity *)self _internalUserActivity];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)_internalUserActivity contentAttributeSet];
}

- (void)setContentAttributeSet:(CSSearchableItemAttributeSet *)contentAttributeSet
{
  [(NSUserActivity *)self _internalUserActivity];
  if (objc_opt_respondsToSelector())
  {
    _internalUserActivity = [(NSUserActivity *)self _internalUserActivity];

    [(UAUserActivity *)_internalUserActivity setContentAttributeSet:contentAttributeSet];
  }
}

@end