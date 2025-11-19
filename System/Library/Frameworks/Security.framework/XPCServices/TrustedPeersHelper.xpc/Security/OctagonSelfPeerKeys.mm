@interface OctagonSelfPeerKeys
- (NSString)description;
- (NSString)peerID;
- (_TtC18TrustedPeersHelper19OctagonSelfPeerKeys)init;
- (void)setEncryptionKey:(id)a3;
- (void)setPeerID:(id)a3;
- (void)setPublicEncryptionKey:(id)a3;
- (void)setPublicSigningKey:(id)a3;
- (void)setSigningKey:(id)a3;
@end

@implementation OctagonSelfPeerKeys

- (void)setEncryptionKey:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_encryptionKey);
  *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_encryptionKey) = a3;
  v3 = a3;
}

- (void)setSigningKey:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey);
  *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey) = a3;
  v3 = a3;
}

- (NSString)peerID
{
  v2 = *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_peerID);
  v3 = *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_peerID + 8);

  v4 = sub_100216964();

  return v4;
}

- (void)setPeerID:(id)a3
{
  v4 = sub_100216974();
  v5 = (self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_peerID);
  v6 = *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_peerID + 8);
  *v5 = v4;
  v5[1] = v7;
}

- (void)setPublicEncryptionKey:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_publicEncryptionKey);
  *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_publicEncryptionKey) = a3;
  v3 = a3;
}

- (void)setPublicSigningKey:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_publicSigningKey);
  *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_publicSigningKey) = a3;
  v3 = a3;
}

- (NSString)description
{
  v2 = self;
  sub_100057958();

  v3 = sub_100216964();

  return v3;
}

- (_TtC18TrustedPeersHelper19OctagonSelfPeerKeys)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end