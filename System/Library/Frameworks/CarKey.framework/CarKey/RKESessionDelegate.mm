@interface RKESessionDelegate
- (_TtC6CarKeyP33_86CE746C1DFB40AB47D6F76682ACEEE118RKESessionDelegate)init;
- (void)sesSession:(id)a3 didCreateKey:(id)a4 forVehicle:(id)a5;
- (void)sesSession:(id)a3 didInvalidateWithError:(id)a4;
- (void)sesSession:(id)a3 didReceivePassthroughMessage:(id)a4 fromVehicle:(id)a5;
- (void)sesSession:(id)a3 event:(id)a4 fromVehicle:(id)a5;
@end

@implementation RKESessionDelegate

- (void)sesSession:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_236ECCEA8();
}

- (void)sesSession:(id)a3 didCreateKey:(id)a4 forVehicle:(id)a5
{
  v7 = sub_236ECF7D4();
  v9 = v8;
  v10 = sub_236ECF7D4();
  v12 = v11;
  v13 = a3;
  v14 = self;
  sub_236ECD1BC(v7, v9, v10, v12);
}

- (void)sesSession:(id)a3 event:(id)a4 fromVehicle:(id)a5
{
  v7 = sub_236ECF7B4();
  v8 = sub_236ECF7D4();
  v10 = v9;
  v11 = a3;
  v12 = self;
  sub_236ECDB18(v7, v8, v10);
}

- (void)sesSession:(id)a3 didReceivePassthroughMessage:(id)a4 fromVehicle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17 = self;
  v11 = sub_236ECF684();
  v13 = v12;

  v14 = sub_236ECF7D4();
  v16 = v15;

  sub_236ECE210(v11, v13, v14, v16);

  sub_236ECE6C4(v11, v13);
}

- (_TtC6CarKeyP33_86CE746C1DFB40AB47D6F76682ACEEE118RKESessionDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end