@interface AISSignOutContext
- (AISSignOutContext)init;
- (AISSignOutContext)initWithAccountAltDSIDsByService:(id)a3;
- (AISSignOutContext)initWithAltDSID:(id)a3 machineIdToSignOut:(id)a4 type:(int64_t)a5;
- (AISSignOutContext)initWithCoder:(id)a3;
- (NSDictionary)accountAltDSIDsByService;
- (NSString)altDSID;
- (NSString)description;
- (NSString)machineIdToSignOut;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AISSignOutContext

- (NSDictionary)accountAltDSIDsByService
{
  v2 = *(self + OBJC_IVAR___AISSignOutContext_accountAltDSIDsByService);
  type metadata accessor for AIDAServiceType(0);
  sub_240665FC0();

  v3 = sub_240759F54();

  return v3;
}

- (NSString)altDSID
{
  v2 = self;
  sub_240719100();
  v4 = v3;

  if (v4)
  {
    v5 = sub_24075A084();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)machineIdToSignOut
{
  if (*(self + OBJC_IVAR___AISSignOutContext_machineIdToSignOut + 8))
  {
    v2 = *(self + OBJC_IVAR___AISSignOutContext_machineIdToSignOut);
    v3 = *(self + OBJC_IVAR___AISSignOutContext_machineIdToSignOut + 8);

    v4 = sub_24075A084();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_240719234(v4);
}

- (AISSignOutContext)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_24071A30C(v3);

  return v4;
}

- (AISSignOutContext)initWithAccountAltDSIDsByService:(id)a3
{
  type metadata accessor for AIDAServiceType(0);
  sub_240665FC0();
  v3 = sub_240759F74();
  v4 = type metadata accessor for SignOutContext();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___AISSignOutContext_accountAltDSIDsByService] = v3;
  v6 = &v5[OBJC_IVAR___AISSignOutContext_machineIdToSignOut];
  *v6 = 0;
  v6[1] = 0;
  *&v5[OBJC_IVAR___AISSignOutContext_type] = 0;
  v5[OBJC_IVAR___AISSignOutContext_shouldRemoveDeviceUser] = 0;
  v9.receiver = v5;
  v9.super_class = v4;
  v7 = [(AISSignOutContext *)&v9 init];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

- (AISSignOutContext)initWithAltDSID:(id)a3 machineIdToSignOut:(id)a4 type:(int64_t)a5
{
  v7 = sub_24075A0B4();
  if (a4)
  {
    v9 = v7;
    v10 = v8;
    v11 = sub_24075A0B4();
    v7 = v9;
    v13 = v12;
    v8 = v10;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  return sub_240719CD0(v7, v8, v11, v13, a5);
}

- (AISSignOutContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  v2 = self;
  SignOutContext.description.getter();

  v3 = sub_24075A084();

  return v3;
}

@end