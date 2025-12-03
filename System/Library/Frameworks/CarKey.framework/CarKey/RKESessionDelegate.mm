@interface RKESessionDelegate
- (_TtC6CarKeyP33_86CE746C1DFB40AB47D6F76682ACEEE118RKESessionDelegate)init;
- (void)sesSession:(id)session didCreateKey:(id)key forVehicle:(id)vehicle;
- (void)sesSession:(id)session didInvalidateWithError:(id)error;
- (void)sesSession:(id)session didReceivePassthroughMessage:(id)message fromVehicle:(id)vehicle;
- (void)sesSession:(id)session event:(id)event fromVehicle:(id)vehicle;
@end

@implementation RKESessionDelegate

- (void)sesSession:(id)session didInvalidateWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  sub_236ECCEA8();
}

- (void)sesSession:(id)session didCreateKey:(id)key forVehicle:(id)vehicle
{
  v7 = sub_236ECF7D4();
  v9 = v8;
  v10 = sub_236ECF7D4();
  v12 = v11;
  sessionCopy = session;
  selfCopy = self;
  sub_236ECD1BC(v7, v9, v10, v12);
}

- (void)sesSession:(id)session event:(id)event fromVehicle:(id)vehicle
{
  v7 = sub_236ECF7B4();
  v8 = sub_236ECF7D4();
  v10 = v9;
  sessionCopy = session;
  selfCopy = self;
  sub_236ECDB18(v7, v8, v10);
}

- (void)sesSession:(id)session didReceivePassthroughMessage:(id)message fromVehicle:(id)vehicle
{
  sessionCopy = session;
  messageCopy = message;
  vehicleCopy = vehicle;
  selfCopy = self;
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