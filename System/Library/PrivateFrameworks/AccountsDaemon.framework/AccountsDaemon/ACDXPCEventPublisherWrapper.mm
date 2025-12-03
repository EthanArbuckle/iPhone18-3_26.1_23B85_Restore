@interface ACDXPCEventPublisherWrapper
+ (void)notifySubscribersOfAccountChange:(id)change type:(int)type;
- (_TtC14AccountsDaemon27ACDXPCEventPublisherWrapper)init;
@end

@implementation ACDXPCEventPublisherWrapper

+ (void)notifySubscribersOfAccountChange:(id)change type:(int)type
{
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE89D0, &qword_221DB1570) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v12 - v7;
  if (change)
  {
    v9 = sub_221DAC4E8();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = change;
    *(v10 + 40) = type;
    changeCopy = change;
    sub_221D8DBBC(0, 0, v8, &unk_221DB1BA0, v10);

    sub_221D96328(v8, &qword_27CFE89D0, &qword_221DB1570);
  }
}

- (_TtC14AccountsDaemon27ACDXPCEventPublisherWrapper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ACDXPCEventPublisherWrapper();
  return [(ACDXPCEventPublisherWrapper *)&v3 init];
}

@end