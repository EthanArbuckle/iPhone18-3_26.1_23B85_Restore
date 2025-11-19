@interface CUPairedPeer(APPairingClientCoreUtils)
- (id)patchedPairedPeerWithPeerInfo:()APPairingClientCoreUtils;
@end

@implementation CUPairedPeer(APPairingClientCoreUtils)

- (id)patchedPairedPeerWithPeerInfo:()APPairingClientCoreUtils
{
  v5 = objc_alloc_init(MEMORY[0x277D028D8]);
  [v5 setAcl:{objc_msgSend(a1, "acl")}];
  [v5 setAltIRK:{objc_msgSend(a1, "altIRK")}];
  [v5 setIdentifier:{objc_msgSend(a1, "identifier")}];
  [v5 setModel:{objc_msgSend(a1, "model")}];
  [v5 setName:{objc_msgSend(a1, "name")}];
  [v5 setPublicKey:{objc_msgSend(a1, "publicKey")}];
  v6 = [objc_msgSend(a1 "info")];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  if (a3)
  {
    [v6 addEntriesFromDictionary:a3];
  }

  [v5 setInfo:v6];
  if (IsAppleInternalBuild() && gLogCategory_APPairingClientCoreUtils <= 50 && (gLogCategory_APPairingClientCoreUtils != -1 || _LogCategory_Initialize()))
  {
    [CUPairedPeer(APPairingClientCoreUtils) patchedPairedPeerWithPeerInfo:];
  }

  return v5;
}

@end