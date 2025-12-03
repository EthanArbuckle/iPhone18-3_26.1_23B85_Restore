@interface UGCCredentialsBuilder
+ (BOOL)isUserLoggedInForICloud;
+ (id)buildICloudUserCredentialsWithError:(id *)error;
+ (void)fetchCommunityIDWithMUID:(unint64_t)d identifierHistory:(id)history shouldIncreaseCount:(BOOL)count CompletionHandler:(id)handler;
@end

@implementation UGCCredentialsBuilder

+ (void)fetchCommunityIDWithMUID:(unint64_t)d identifierHistory:(id)history shouldIncreaseCount:(BOOL)count CompletionHandler:(id)handler
{
  countCopy = count;
  handlerCopy = handler;
  historyCopy = history;
  v11 = objc_alloc_init(GEORPFeedbackUserInfo);
  v12 = objc_alloc_init(GEORPTdmInfo);
  [v11 setTdmUserInfo:v12];

  v13 = +[_TtC4Maps26FeedbackCommunityIDManager shared];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1009DC518;
  v16[3] = &unk_101632340;
  v17 = v11;
  v18 = handlerCopy;
  v14 = v11;
  v15 = handlerCopy;
  [v13 fetchAuthenticationInfoForReviewedPlaceWithMuid:d identifierHistory:historyCopy shouldIncreaseCount:countCopy completion:v16];
}

+ (id)buildICloudUserCredentialsWithError:(id *)error
{
  v4 = objc_alloc_init(GEORPFeedbackUserInfo);
  v5 = +[GEORPUserCredentials _credentialsForPrimaryICloudAccount];
  [v4 setUserCredentials:v5];

  v6 = sub_10002E924();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    userCredentials = [v4 userCredentials];
    icloudUserPersonId = [userCredentials icloudUserPersonId];
    userCredentials2 = [v4 userCredentials];
    icloudUserMapsAuthToken = [userCredentials2 icloudUserMapsAuthToken];
    v20 = 138412546;
    v21 = icloudUserPersonId;
    v22 = 2112;
    v23 = icloudUserMapsAuthToken;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "UGCCredentialsBuilder icloud person id %@ and auth token %@", &v20, 0x16u);
  }

  userCredentials3 = [v4 userCredentials];
  icloudUserPersonId2 = [userCredentials3 icloudUserPersonId];
  v13 = [icloudUserPersonId2 length];

  if (v13)
  {
    userCredentials4 = [v4 userCredentials];
    icloudUserMapsAuthToken2 = [userCredentials4 icloudUserMapsAuthToken];
    v16 = [icloudUserMapsAuthToken2 length];

    if (v16)
    {
      v17 = v4;
      goto LABEL_12;
    }

    if (error)
    {
      v18 = @"NoAuthToken";
      goto LABEL_10;
    }
  }

  else if (error)
  {
    v18 = @"NoDSID";
LABEL_10:
    [NSError errorWithDomain:v18 code:-1 userInfo:0];
    *error = v17 = 0;
    goto LABEL_12;
  }

  v17 = 0;
LABEL_12:

  return v17;
}

+ (BOOL)isUserLoggedInForICloud
{
  v5 = 0;
  v2 = [UGCCredentialsBuilder buildICloudUserCredentialsWithError:&v5];
  v3 = v2 != 0;

  return v3;
}

@end