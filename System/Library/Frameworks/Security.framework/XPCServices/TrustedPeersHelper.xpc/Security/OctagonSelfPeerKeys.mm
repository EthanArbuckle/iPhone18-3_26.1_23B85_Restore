@interface OctagonSelfPeerKeys
- (NSString)description;
- (NSString)peerID;
- (_TtC18TrustedPeersHelper19OctagonSelfPeerKeys)init;
- (void)setEncryptionKey:(id)key;
- (void)setPeerID:(id)d;
- (void)setPublicEncryptionKey:(id)key;
- (void)setPublicSigningKey:(id)key;
- (void)setSigningKey:(id)key;
@end

@implementation OctagonSelfPeerKeys

- (void)setEncryptionKey:(id)key
{
  v4 = *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_encryptionKey);
  *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_encryptionKey) = key;
  keyCopy = key;
}

- (void)setSigningKey:(id)key
{
  v4 = *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey);
  *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey) = key;
  keyCopy = key;
}

- (NSString)peerID
{
  v2 = *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_peerID);
  v3 = *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_peerID + 8);

  v4 = sub_100216964();

  return v4;
}

- (void)setPeerID:(id)d
{
  v4 = sub_100216974();
  v5 = (self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_peerID);
  v6 = *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_peerID + 8);
  *v5 = v4;
  v5[1] = v7;
}

- (void)setPublicEncryptionKey:(id)key
{
  v4 = *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_publicEncryptionKey);
  *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_publicEncryptionKey) = key;
  keyCopy = key;
}

- (void)setPublicSigningKey:(id)key
{
  v4 = *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_publicSigningKey);
  *(self + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_publicSigningKey) = key;
  keyCopy = key;
}

- (NSString)description
{
  selfCopy = self;
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