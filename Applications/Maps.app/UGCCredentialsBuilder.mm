@interface UGCCredentialsBuilder
+ (BOOL)isUserLoggedInForICloud;
+ (id)buildICloudUserCredentialsWithError:(id *)a3;
+ (void)fetchCommunityIDWithMUID:(unint64_t)a3 identifierHistory:(id)a4 shouldIncreaseCount:(BOOL)a5 CompletionHandler:(id)a6;
@end

@implementation UGCCredentialsBuilder

+ (void)fetchCommunityIDWithMUID:(unint64_t)a3 identifierHistory:(id)a4 shouldIncreaseCount:(BOOL)a5 CompletionHandler:(id)a6
{
  v6 = a5;
  v9 = a6;
  v10 = a4;
  v11 = objc_alloc_init(GEORPFeedbackUserInfo);
  v12 = objc_alloc_init(GEORPTdmInfo);
  [v11 setTdmUserInfo:v12];

  v13 = +[_TtC4Maps26FeedbackCommunityIDManager shared];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1009DC518;
  v16[3] = &unk_101632340;
  v17 = v11;
  v18 = v9;
  v14 = v11;
  v15 = v9;
  [v13 fetchAuthenticationInfoForReviewedPlaceWithMuid:a3 identifierHistory:v10 shouldIncreaseCount:v6 completion:v16];
}

+ (id)buildICloudUserCredentialsWithError:(id *)a3
{
  v4 = objc_alloc_init(GEORPFeedbackUserInfo);
  v5 = +[GEORPUserCredentials _credentialsForPrimaryICloudAccount];
  [v4 setUserCredentials:v5];

  v6 = sub_10002E924();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 userCredentials];
    v8 = [v7 icloudUserPersonId];
    v9 = [v4 userCredentials];
    v10 = [v9 icloudUserMapsAuthToken];
    v20 = 138412546;
    v21 = v8;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "UGCCredentialsBuilder icloud person id %@ and auth token %@", &v20, 0x16u);
  }

  v11 = [v4 userCredentials];
  v12 = [v11 icloudUserPersonId];
  v13 = [v12 length];

  if (v13)
  {
    v14 = [v4 userCredentials];
    v15 = [v14 icloudUserMapsAuthToken];
    v16 = [v15 length];

    if (v16)
    {
      v17 = v4;
      goto LABEL_12;
    }

    if (a3)
    {
      v18 = @"NoAuthToken";
      goto LABEL_10;
    }
  }

  else if (a3)
  {
    v18 = @"NoDSID";
LABEL_10:
    [NSError errorWithDomain:v18 code:-1 userInfo:0];
    *a3 = v17 = 0;
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