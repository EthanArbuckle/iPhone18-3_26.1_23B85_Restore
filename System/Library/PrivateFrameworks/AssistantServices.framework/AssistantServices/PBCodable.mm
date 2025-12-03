@interface PBCodable
- (void)_ad_performForPeerLocationWithCompletion:(id)completion;
- (void)_ad_performWithCloudService:(id)service fromPeer:(id)peer completion:(id)completion;
- (void)_ad_performWithPeerLocationManagerRemote:(id)remote completion:(id)completion;
- (void)_ad_performWithPeerStreamConnection:(id)connection context:(id)context;
- (void)_ad_performWithSharedDataRemote:(id)remote completion:(id)completion;
@end

@implementation PBCodable

- (void)_ad_performWithPeerStreamConnection:(id)connection context:(id)context
{
  v4 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[PBCodable(ADPeerStreamConnection) _ad_performWithPeerStreamConnection:context:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }
}

- (void)_ad_performWithSharedDataRemote:(id)remote completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0, 0);
  }
}

- (void)_ad_performWithPeerLocationManagerRemote:(id)remote completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0, 0);
  }
}

- (void)_ad_performForPeerLocationWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)_ad_performWithCloudService:(id)service fromPeer:(id)peer completion:(id)completion
{
  completionCopy = completion;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[PBCodable(ADPeerCloudService) _ad_performWithCloudService:fromPeer:completion:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  v7 = +[ADPeerCloudService _unexpectedMessageError];
  completionCopy[2](completionCopy, 0, 0xFFFFLL, v7);
}

@end