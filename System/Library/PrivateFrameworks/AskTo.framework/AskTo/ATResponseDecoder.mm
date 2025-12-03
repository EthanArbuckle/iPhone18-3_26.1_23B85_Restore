@interface ATResponseDecoder
+ (id)responseFromJSONData:(id)data;
- (ATResponseDecoder)init;
@end

@implementation ATResponseDecoder

+ (id)responseFromJSONData:(id)data
{
  dataCopy = data;
  v4 = sub_2258E0B40();
  v6 = v5;

  sub_2258D4048(v15);
  sub_2258D44A0(v4, v6);
  v7 = v16;
  if (v16)
  {
    v8 = __swift_project_boxed_opaque_existential_0(v15, v16);
    v9 = *(v7 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8, v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12);
    v13 = sub_2258E1060();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (ATResponseDecoder)init
{
  v3.receiver = self;
  v3.super_class = ATResponseDecoder;
  return [(ATResponseDecoder *)&v3 init];
}

@end