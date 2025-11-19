@interface NSUserActivity
+ (BOOL)_currentUserActivityUUIDWithOptions:(id)a3 completionHandler:(id)a4;
+ (BOOL)_supportsUserActivityAppLinks;
+ (id)_currentUserActivityUUID;
+ (id)_fetchUserActivityWithUUID:(id)a3 intervalToWaitForDocumentSynchronizationToComplete:(double)a4 completionHandler:(id)a5;
+ (id)_userFacingErrorForLaunchServicesError:(id)a3 userInfo:(id)a4;
+ (void)_fetchUserActivityWithUUID:(id)a3 completionHandler:(id)a4;
+ (void)_registerUserActivityType:(id)a3 dynamicActivityType:(id)a4;
+ (void)_unregisterUserActivityType:(id)a3 dynamicActivityType:(id)a4;
+ (void)deleteAllSavedUserActivitiesWithCompletionHandler:(void *)handler;
+ (void)deleteSavedUserActivitiesWithPersistentIdentifiers:(NSArray *)persistentIdentifiers completionHandler:(void *)handler;
- (BOOL)_createUserActivityDataWithOptions:(id)a3 completionHandler:(id)a4;
- (BOOL)_createUserActivityStringsWithOptions:(id)a3 completionHandler:(id)a4;
- (BOOL)isEligibleForHandoff;
- (BOOL)isEligibleForPrediction;
- (BOOL)isEligibleForPublicIndexing;
- (BOOL)isEligibleForSearch;
- (BOOL)isEqual:(id)a3;
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
- (NSUserActivity)initWithInternalUserActivity:(id)a3;
- (NSUserActivity)initWithTypeIdentifier:(id)a3;
- (NSUserActivityPersistentIdentifier)persistentIdentifier;
- (id)_determineMatchingApplicationBundleIdentifierWithOptions:(id)a3;
- (id)_initWithTypeIdentifier:(id)a3 suggestedActionType:(int64_t)a4 options:(id)a5;
- (id)_initWithUserActivityData:(id)a3;
- (id)_initWithUserActivityData:(id)a3 options:(id)a4;
- (id)_initWithUserActivityStrings:(id)a3 secondaryString:(id)a4 optionalData:(id)a5;
- (id)_initWithUserActivityStrings:(id)a3 secondaryString:(id)a4 optionalData:(id)a5 options:(id)a6;
- (id)_initWithUserActivityType:(id)a3 dynamicActivityType:(id)a4 options:(id)a5;
- (id)contentUserAction;
- (id)typeIdentifier;
- (id)webPageURL;
- (int64_t)_suggestedActionType;
- (unint64_t)hash;
- (void)_addKeywordsFromArray:(id)a3;
- (void)_prepareUserActivityForLaunchingWithOptions:(id)a3 completionHandler:(id)a4;
- (void)_resignCurrent;
- (void)_setFrameworkDelegate:(id)a3;
- (void)_setOptions:(id)a3;
- (void)addUserInfoEntriesFromDictionary:(NSDictionary *)otherDictionary;
- (void)becomeCurrent;
- (void)dealloc;
- (void)didReceiveInputStream:(id)a3 outputStream:(id)a4;
- (void)didSynchronizeActivity;
- (void)getContinuationStreamsWithCompletionHandler:(void *)completionHandler;
- (void)invalidate;
- (void)resignCurrent;
- (void)setContentAttributeSet:(CSSearchableItemAttributeSet *)contentAttributeSet;
- (void)setContentUserAction:(id)a3;
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
- (void)setWebPageURL:(id)a3;
- (void)setWebpageURL:(NSURL *)webpageURL;
- (void)willSynchronizeActivity;
@end

@implementation NSUserActivity

- (NSDictionary)userInfo
{
  v2 = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)v2 userInfo];
}

- (BOOL)isEligibleForPrediction
{
  v2 = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)v2 isEligibleForPrediction];
}

- (NSUUID)_uniqueIdentifier
{
  v2 = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)v2 uniqueIdentifier];
}

- (NSString)activityType
{
  v2 = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)v2 typeIdentifier];
}

- (NSString)title
{
  v2 = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)v2 title];
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

  v3 = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)v3 isEligibleForSearch];
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

  v3 = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)v3 isEligibleForHandoff];
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

  v3 = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)v3 isEligibleForPublicIndexing];
}

- (void)becomeCurrent
{
  v2 = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)v2 becomeCurrent];
}

- (NSURL)webpageURL
{
  v2 = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)v2 webpageURL];
}

- (NSUserActivityPersistentIdentifier)persistentIdentifier
{
  [(NSUserActivity *)self _internalUserActivity];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v3 = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)v3 persistentIdentifier];
}

- (void)willSynchronizeActivity
{
  v3 = [(NSUserActivity *)self _frameworkDelegate];
  v4 = [(NSUserActivity *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(NSUserActivityDelegate *)v3 userActivityWillSave:self];
  }

  if (objc_opt_respondsToSelector())
  {

    [v4 userActivityWillSave:self];
  }
}

- (void)resignCurrent
{
  v2 = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)v2 resignCurrent];
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
  v2 = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)v2 suggestedActionType];
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

  v3 = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)v3 keywords];
}

- (void)invalidate
{
  v2 = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)v2 invalidate];
}

- (NSUserActivity)initWithInternalUserActivity:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSUserActivity;
  v4 = [(NSUserActivity *)&v6 init];
  if (v4)
  {
    v4->_internal = a3;
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
  v4 = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)v4 setTitle:title];
}

- (void)setUserInfo:(NSDictionary *)userInfo
{
  v4 = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)v4 setUserInfo:userInfo];
}

- (void)addUserInfoEntriesFromDictionary:(NSDictionary *)otherDictionary
{
  v4 = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)v4 addUserInfoEntriesFromDictionary:otherDictionary];
}

- (BOOL)needsSave
{
  v2 = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)v2 needsSave];
}

- (void)setNeedsSave:(BOOL)needsSave
{
  v3 = needsSave;
  v4 = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)v4 setNeedsSave:v3];
}

- (void)setWebpageURL:(NSURL *)webpageURL
{
  v4 = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)v4 setWebpageURL:webpageURL];
}

- (NSURL)referrerURL
{
  v2 = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)v2 referrerURL];
}

- (void)setReferrerURL:(NSURL *)referrerURL
{
  v4 = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)v4 setReferrerURL:referrerURL];
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

  v3 = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)v3 contentUserAction];
}

- (void)setContentUserAction:(id)a3
{
  if (qword_1ED43FE38 != -1)
  {
    dispatch_once(&qword_1ED43FE38, &__block_literal_global_311);
  }

  if (_MergedGlobals_140 == 1)
  {
    v5 = [(NSUserActivity *)self _internalUserActivity];

    [(UAUserActivity *)v5 setContentUserAction:a3];
  }
}

- (void)setDelegate:(id)delegate
{
  v4 = self;
  objc_storeWeak(&self->_delegate, delegate);
  if (([(UAUserActivity *)[(NSUserActivity *)v4 _internalUserActivity] isInvalidated]& 1) == 0)
  {
    v5 = [(NSUserActivity *)v4 _internalUserActivity];
    if (!delegate && ![(NSUserActivity *)v4 _frameworkDelegate])
    {
      v4 = 0;
    }

    [(UAUserActivity *)v5 setDelegate:v4];
  }
}

- (BOOL)supportsContinuationStreams
{
  v2 = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)v2 supportsContinuationStreams];
}

- (void)setSupportsContinuationStreams:(BOOL)supportsContinuationStreams
{
  v3 = supportsContinuationStreams;
  v4 = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)v4 setSupportsContinuationStreams:v3];
}

- (void)getContinuationStreamsWithCompletionHandler:(void *)completionHandler
{
  v5[5] = *MEMORY[0x1E69E9840];
  if (completionHandler)
  {
    v4 = [(NSUserActivity *)self _internalUserActivity];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __62__NSUserActivity_getContinuationStreamsWithCompletionHandler___block_invoke;
    v5[3] = &unk_1E69F6EB8;
    v5[4] = completionHandler;
    [(UAUserActivity *)v4 getContinuationStreamsWithCompletionHandler:v5];
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

  v3 = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)v3 requiredUserInfoKeys];
}

- (void)setRequiredUserInfoKeys:(NSSet *)requiredUserInfoKeys
{
  if (qword_1ED43FE38 != -1)
  {
    dispatch_once(&qword_1ED43FE38, &__block_literal_global_311);
  }

  if (_MergedGlobals_140 == 1)
  {
    v5 = [(NSUserActivity *)self _internalUserActivity];

    [(UAUserActivity *)v5 setRequiredUserInfoKeys:requiredUserInfoKeys];
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

  v3 = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)v3 expirationDate];
}

- (void)setExpirationDate:(NSDate *)expirationDate
{
  if (qword_1ED43FE38 != -1)
  {
    dispatch_once(&qword_1ED43FE38, &__block_literal_global_311);
  }

  if (_MergedGlobals_140 == 1)
  {
    v5 = [(NSUserActivity *)self _internalUserActivity];

    [(UAUserActivity *)v5 setExpirationDate:expirationDate];
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
    v5 = [(NSUserActivity *)self _internalUserActivity];

    [(UAUserActivity *)v5 setKeywords:keywords];
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
    v5 = [(NSUserActivity *)self _internalUserActivity];

    [(UAUserActivity *)v5 setEligibleForHandoff:v3];
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
    v5 = [(NSUserActivity *)self _internalUserActivity];

    [(UAUserActivity *)v5 setEligibleForSearch:v3];
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
    v5 = [(NSUserActivity *)self _internalUserActivity];

    [(UAUserActivity *)v5 setEligibleForPublicIndexing:v3];
  }
}

- (void)setEligibleForPrediction:(BOOL)eligibleForPrediction
{
  v3 = eligibleForPrediction;
  v4 = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)v4 setEligibleForPrediction:v3];
}

- (void)setPersistentIdentifier:(NSUserActivityPersistentIdentifier)persistentIdentifier
{
  [(NSUserActivity *)self _internalUserActivity];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(NSUserActivity *)self _internalUserActivity];

    [(UAUserActivity *)v5 setPersistentIdentifier:persistentIdentifier];
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

- (BOOL)isEqual:(id)a3
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  if (self == a3)
  {
    return 1;
  }

  v7 = [(NSUserActivity *)self _uniqueIdentifier];
  v8 = [a3 _uniqueIdentifier];

  return [(NSUUID *)v7 isEqual:v8];
}

- (unint64_t)hash
{
  v2 = [(NSUserActivity *)self _uniqueIdentifier];

  return [(NSUUID *)v2 hash];
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

  v3 = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)v3 targetContentIdentifier];
}

- (void)setTargetContentIdentifier:(NSString *)targetContentIdentifier
{
  if ([(NSUserActivity *)self _internalUserActivity])
  {
    [(NSUserActivity *)self _internalUserActivity];
    if (objc_opt_respondsToSelector())
    {
      v5 = [(NSUserActivity *)self _internalUserActivity];

      [(UAUserActivity *)v5 setTargetContentIdentifier:targetContentIdentifier];
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

- (NSUserActivity)initWithTypeIdentifier:(id)a3
{
  if (initWithTypeIdentifier__sOnce != -1)
  {
    dispatch_once(&initWithTypeIdentifier__sOnce, &__block_literal_global_21);
  }

  return [(NSUserActivity *)self initWithActivityType:a3];
}

- (id)webPageURL
{
  if (webPageURL_sOnce != -1)
  {
    dispatch_once(&webPageURL_sOnce, &__block_literal_global_26);
  }

  v3 = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)v3 webpageURL];
}

- (void)setWebPageURL:(id)a3
{
  if (setWebPageURL__sOnce != -1)
  {
    dispatch_once(&setWebPageURL__sOnce, &__block_literal_global_31);
  }

  v5 = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)v5 setWebpageURL:a3];
}

- (void)didSynchronizeActivity
{
  v3 = [(NSUserActivity *)self _frameworkDelegate];
  v4 = [(NSUserActivity *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(NSUserActivityDelegate *)v3 userActivityWasContinued:self];
  }

  if (objc_opt_respondsToSelector())
  {

    [v4 userActivityWasContinued:self];
  }
}

- (void)didReceiveInputStream:(id)a3 outputStream:(id)a4
{
  v7 = [(NSUserActivity *)self _frameworkDelegate];
  v8 = [(NSUserActivity *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(NSUserActivityDelegate *)v7 userActivity:self didReceiveInputStream:a3 outputStream:a4];
  }

  if (objc_opt_respondsToSelector())
  {

    [v8 userActivity:self didReceiveInputStream:a3 outputStream:a4];
  }
}

- (void)_addKeywordsFromArray:(id)a3
{
  if (qword_1ED43FE38 != -1)
  {
    dispatch_once(&qword_1ED43FE38, &__block_literal_global_311);
  }

  if (_MergedGlobals_140 == 1)
  {
    v5 = [(NSUserActivity *)self _internalUserActivity];

    [(UAUserActivity *)v5 addKeywordsFromArray:a3];
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

- (id)_initWithUserActivityData:(id)a3
{
  v4 = [objc_alloc(getUAUserActivityClass()) initWithUserActivityData:a3 options:0];
  if (!v4 || (v5 = v4, self = [(NSUserActivity *)self initWithInternalUserActivity:v4], v5, !self))
  {
    [(NSUserActivity *)self dealloc];
    return 0;
  }

  return self;
}

- (id)_initWithUserActivityData:(id)a3 options:(id)a4
{
  v5 = [objc_alloc(getUAUserActivityClass()) initWithUserActivityData:a3 options:a4];
  if (!v5 || (v6 = v5, self = [(NSUserActivity *)self initWithInternalUserActivity:v5], v6, !self))
  {
    [(NSUserActivity *)self dealloc];
    return 0;
  }

  return self;
}

- (id)_initWithUserActivityStrings:(id)a3 secondaryString:(id)a4 optionalData:(id)a5
{
  v6 = [objc_alloc(getUAUserActivityClass()) initWithUserActivityStrings:a3 optionalString:a4 tertiaryData:a5 options:0];
  if (!v6 || (v7 = v6, self = [(NSUserActivity *)self initWithInternalUserActivity:v6], v7, !self))
  {
    [(NSUserActivity *)self dealloc];
    return 0;
  }

  return self;
}

- (id)_initWithUserActivityStrings:(id)a3 secondaryString:(id)a4 optionalData:(id)a5 options:(id)a6
{
  v7 = [objc_alloc(getUAUserActivityClass()) initWithUserActivityStrings:a3 optionalString:a4 tertiaryData:a5 options:a6];
  if (!v7 || (v8 = v7, self = [(NSUserActivity *)self initWithInternalUserActivity:v7], v8, !self))
  {
    [(NSUserActivity *)self dealloc];
    return 0;
  }

  return self;
}

- (BOOL)_createUserActivityDataWithOptions:(id)a3 completionHandler:(id)a4
{
  [(NSUserActivity *)self _internalUserActivity];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v7 = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)v7 createUserActivityDataWithSaving:1 options:a3 completionHandler:a4];
}

- (BOOL)_createUserActivityStringsWithOptions:(id)a3 completionHandler:(id)a4
{
  [(NSUserActivity *)self _internalUserActivity];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v7 = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)v7 createUserActivityStringsWithSaving:1 options:a3 completionHandler:a4];
}

- (void)_prepareUserActivityForLaunchingWithOptions:(id)a3 completionHandler:(id)a4
{
  [(NSUserActivity *)self _internalUserActivity];
  if (objc_opt_respondsToSelector())
  {
    v7 = [(NSUserActivity *)self _internalUserActivity];

    [(UAUserActivity *)v7 prepareUserActivityForLaunchingWithOptions:a3 completionHandler:a4];
  }
}

- (NSString)_teamIdentifier
{
  [(NSUserActivity *)self _internalUserActivity];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v3 = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)v3 teamID];
}

+ (BOOL)_currentUserActivityUUIDWithOptions:(id)a3 completionHandler:(id)a4
{
  getUAUserActivityClass();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  UAUserActivityClass = getUAUserActivityClass();

  return [UAUserActivityClass currentUserActivityUUIDWithOptions:a3 completionHandler:a4];
}

- (id)_determineMatchingApplicationBundleIdentifierWithOptions:(id)a3
{
  [(NSUserActivity *)self _internalUserActivity];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v5 = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)v5 determineMatchingApplicationBundleIdentfierWithOptions:a3];
}

+ (id)_fetchUserActivityWithUUID:(id)a3 intervalToWaitForDocumentSynchronizationToComplete:(double)a4 completionHandler:(id)a5
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
    v11[4] = a3;
    v11[5] = a5;
    return [UAUserActivityClass fetchUserActivityWithUUID:a3 intervalToWaitForDocumentSynchronizationToComplete:v11 completionHandler:a4];
  }

  else
  {
    [a1 _fetchUserActivityWithUUID:a3 completionHandler:a5];
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

+ (void)_fetchUserActivityWithUUID:(id)a3 completionHandler:(id)a4
{
  v7[6] = *MEMORY[0x1E69E9840];
  getUAUserActivityClass();
  if (objc_opt_respondsToSelector())
  {
    [getUAUserActivityClass() showUserActivityUIProgressForUUID:a3];
  }

  UAUserActivityClass = getUAUserActivityClass();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__NSUserActivity_NSUserActivityPrivate___fetchUserActivityWithUUID_completionHandler___block_invoke;
  v7[3] = &unk_1E69F6EE0;
  v7[4] = a3;
  v7[5] = a4;
  [UAUserActivityClass fetchUserActivityWithUUID:a3 completionHandler:v7];
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

+ (void)_registerUserActivityType:(id)a3 dynamicActivityType:(id)a4
{
  getUAUserActivityClass();
  if (objc_opt_respondsToSelector())
  {
    UAUserActivityClass = getUAUserActivityClass();

    [UAUserActivityClass addDynamicUserActivity:a4 matching:a3];
  }
}

+ (void)_unregisterUserActivityType:(id)a3 dynamicActivityType:(id)a4
{
  getUAUserActivityClass();
  if (objc_opt_respondsToSelector())
  {
    UAUserActivityClass = getUAUserActivityClass();

    [UAUserActivityClass removeDynamicUserActivity:a4 matching:a3];
  }
}

- (id)_initWithTypeIdentifier:(id)a3 suggestedActionType:(int64_t)a4 options:(id)a5
{
  v6 = [objc_alloc(getUAUserActivityClass()) initWithTypeIdentifier:a3 suggestedActionType:a4 options:a5];

  return [(NSUserActivity *)self initWithInternalUserActivity:v6];
}

- (id)_initWithUserActivityType:(id)a3 dynamicActivityType:(id)a4 options:(id)a5
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSUserActivity;
  v8 = [(NSUserActivity *)&v10 init];
  if (v8 && [getUAUserActivityClass() instancesRespondToSelector:sel_initWithTypeIdentifier_dynamicIdentifier_options_])
  {
    v8->_internal = [objc_alloc(getUAUserActivityClass()) initWithTypeIdentifier:a3 dynamicIdentifier:a4 options:a5];
  }

  return v8;
}

- (NSDictionary)_options
{
  v2 = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)v2 options];
}

- (void)_setOptions:(id)a3
{
  v4 = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)v4 setOptions:a3];
}

- (void)_setFrameworkDelegate:(id)a3
{
  objc_storeWeak(&self->_frameworkDelegate, a3);
  if (([(UAUserActivity *)[(NSUserActivity *)self _internalUserActivity] isInvalidated]& 1) == 0)
  {
    v5 = [(NSUserActivity *)self _internalUserActivity];
    if (a3 | [(NSUserActivity *)self delegate])
    {
      v6 = self;
    }

    else
    {
      v6 = 0;
    }

    [(UAUserActivity *)v5 setDelegate:v6];
  }
}

- (void)_resignCurrent
{
  v2 = [(NSUserActivity *)self _internalUserActivity];

  [(UAUserActivity *)v2 resignCurrent];
}

+ (id)_userFacingErrorForLaunchServicesError:(id)a3 userInfo:(id)a4
{
  if (!a3)
  {
    return a3;
  }

  v6 = [a3 domain];
  v7 = [a3 code];
  if (![v6 isEqual:getUAContinuityErrorDomain()])
  {
    if ([v6 isEqual:@"NSPOSIXErrorDomain"])
    {
      v10 = v7 - 45;
      if ((v7 - 45) <= 0x21)
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

          return a3;
        }
      }

      if (v7 == 2)
      {
LABEL_19:
        v9 = 4609;
        if (@"NSCocoaErrorDomain")
        {
          goto LABEL_22;
        }

        return a3;
      }
    }

    else if ([v6 isEqual:@"NSCocoaErrorDomain"])
    {
      return a3;
    }

    v9 = 4608;
    if (@"NSCocoaErrorDomain")
    {
      goto LABEL_22;
    }

    return a3;
  }

  v8 = 4608;
  if (v7 == -110)
  {
    v8 = 4611;
  }

  if (v7 == -109)
  {
    v9 = 4610;
  }

  else
  {
    v9 = v8;
  }

  if (!@"NSCocoaErrorDomain")
  {
    return a3;
  }

LABEL_22:
  v12 = [a4 mutableCopy];
  if (v12)
  {
    v13 = v12;
LABEL_25:
    [v13 setObject:a3 forKey:@"NSUnderlyingError"];
    goto LABEL_26;
  }

  v13 = [MEMORY[0x1E695DF90] dictionary];
  if (v13)
  {
    goto LABEL_25;
  }

LABEL_26:

  return [NSError errorWithDomain:@"NSCocoaErrorDomain" code:v9 userInfo:v13];
}

- (CSSearchableItemAttributeSet)contentAttributeSet
{
  [(NSUserActivity *)self _internalUserActivity];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v3 = [(NSUserActivity *)self _internalUserActivity];

  return [(UAUserActivity *)v3 contentAttributeSet];
}

- (void)setContentAttributeSet:(CSSearchableItemAttributeSet *)contentAttributeSet
{
  [(NSUserActivity *)self _internalUserActivity];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(NSUserActivity *)self _internalUserActivity];

    [(UAUserActivity *)v5 setContentAttributeSet:contentAttributeSet];
  }
}

@end