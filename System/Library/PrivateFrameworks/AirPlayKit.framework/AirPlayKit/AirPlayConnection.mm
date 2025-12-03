@interface AirPlayConnection
- (_TtC10AirPlayKit17AirPlayConnection)init;
- (void)dealloc;
@end

@implementation AirPlayConnection

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = qword_27E35E178;
  selfCopy = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_23E900764();
  __swift_project_value_buffer(v6, qword_27E367138);
  sub_23E882260(0xD000000000000060, 0x800000023E908CE0, 0x292865736F6C63, 0xE700000000000000);
  [*(&selfCopy->super.isa + OBJC_IVAR____TtC10AirPlayKit17AirPlayConnection_connection) close];
  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(AirPlayConnection *)&v7 dealloc];
}

- (_TtC10AirPlayKit17AirPlayConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end