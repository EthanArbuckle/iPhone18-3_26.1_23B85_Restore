@interface PBCodable
- (void)_ad_performForPeerLocationWithCompletion:(id)a3;
- (void)_ad_performWithCloudService:(id)a3 fromPeer:(id)a4 completion:(id)a5;
- (void)_ad_performWithPeerLocationManagerRemote:(id)a3 completion:(id)a4;
- (void)_ad_performWithPeerStreamConnection:(id)a3 context:(id)a4;
- (void)_ad_performWithSharedDataRemote:(id)a3 completion:(id)a4;
@end

@implementation PBCodable

- (void)_ad_performWithPeerStreamConnection:(id)a3 context:(id)a4
{
  v4 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[PBCodable(ADPeerStreamConnection) _ad_performWithPeerStreamConnection:context:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }
}

- (void)_ad_performWithSharedDataRemote:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0, 0);
  }
}

- (void)_ad_performWithPeerLocationManagerRemote:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0, 0);
  }
}

- (void)_ad_performForPeerLocationWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (void)_ad_performWithCloudService:(id)a3 fromPeer:(id)a4 completion:(id)a5
{
  v5 = a5;
  v6 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[PBCodable(ADPeerCloudService) _ad_performWithCloudService:fromPeer:completion:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  v7 = +[ADPeerCloudService _unexpectedMessageError];
  v5[2](v5, 0, 0xFFFFLL, v7);
}

@end