@interface NFCISO7816Tag
- (NSString)initialSelectedAID;
- (id)copyWithZone:(_NSZone *)zone;
- (void)sendCommandAPDU:(id)u completionHandler:(id)handler;
@end

@implementation NFCISO7816Tag

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

- (NSString)initialSelectedAID
{
  selectedAID = [(NFCTag *)self selectedAID];
  v3 = selectedAID;
  if (selectedAID)
  {
    nF_asHexString = [selectedAID NF_asHexString];
  }

  else
  {
    nF_asHexString = &stru_284A4F850;
  }

  return nF_asHexString;
}

- (void)sendCommandAPDU:(id)u completionHandler:(id)handler
{
  handlerCopy = handler;
  uCopy = u;
  v8 = _os_activity_create(&dword_23728C000, "NFCISO7816Tag sendCommandAPDU:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  os_activity_scope_leave(&v10);

  asData = [uCopy asData];

  [(NFCTag *)self _sendAPDU:asData completionHandler:handlerCopy];
}

@end