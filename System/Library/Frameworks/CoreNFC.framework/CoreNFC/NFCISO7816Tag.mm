@interface NFCISO7816Tag
- (NSString)initialSelectedAID;
- (id)copyWithZone:(_NSZone *)a3;
- (void)sendCommandAPDU:(id)a3 completionHandler:(id)a4;
@end

@implementation NFCISO7816Tag

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

- (NSString)initialSelectedAID
{
  v2 = [(NFCTag *)self selectedAID];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 NF_asHexString];
  }

  else
  {
    v4 = &stru_284A4F850;
  }

  return v4;
}

- (void)sendCommandAPDU:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _os_activity_create(&dword_23728C000, "NFCISO7816Tag sendCommandAPDU:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v8, &v10);
  os_activity_scope_leave(&v10);

  v9 = [v7 asData];

  [(NFCTag *)self _sendAPDU:v9 completionHandler:v6];
}

@end