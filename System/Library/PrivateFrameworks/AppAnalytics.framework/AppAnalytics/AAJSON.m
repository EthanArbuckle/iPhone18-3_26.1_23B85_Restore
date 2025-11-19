@interface AAJSON
- (AAJSON)init;
- (AAJSON)initWithData:(id)a3;
- (BOOL)exists;
- (NSArray)array;
- (NSDictionary)object;
- (NSNumber)number;
- (NSString)description;
- (NSString)string;
- (id)any;
- (id)objectAtIndexedSubscript:(int64_t)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (id)toDataWithOptions:(unint64_t)a3 :(id *)a4;
@end

@implementation AAJSON

- (AAJSON)initWithData:(id)a3
{
  v3 = a3;
  v4 = sub_1B6AB8C80();
  v6 = v5;

  v7 = sub_1B69E03A4();
  sub_1B6993C94(v4, v6);
  return v7;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = sub_1B6AB92E0();
  v6 = v5;
  v7 = self;
  v8 = sub_1B69D90E4(v4, v6);

  return v8;
}

- (id)objectAtIndexedSubscript:(int64_t)a3
{
  v4 = self;
  v5 = sub_1B69D92A8(a3);

  return v5;
}

- (BOOL)exists
{
  sub_1B69C1678(self + OBJC_IVAR___AAJSON_value, v4);
  v2 = v4[3] != 0;
  sub_1B6981634(v4);
  return v2;
}

- (id)any
{
  sub_1B69C1678(self + OBJC_IVAR___AAJSON_value, v10);
  v2 = v11;
  if (v11)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v10, v11);
    v4 = *(v2 - 8);
    v5 = *(v4 + 64);
    MEMORY[0x1EEE9AC00](v3);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7);
    v8 = sub_1B6ABA0E0();
    (*(v4 + 8))(v7, v2);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)string
{
  sub_1B69C1678(self + OBJC_IVAR___AAJSON_value, v5);
  if (v6)
  {
    if (swift_dynamicCast())
    {
      v2 = sub_1B6AB92B0();

      v3 = v2;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B6981634(v5);
  }

  v3 = 0;
LABEL_6:

  return v3;
}

- (NSArray)array
{
  v2 = self;
  v3 = sub_1B69D995C();

  if (v3)
  {
    type metadata accessor for JSON();
    v4 = sub_1B6AB9500();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDictionary)object
{
  v2 = self;
  v3 = sub_1B69D9B74();

  if (v3)
  {
    type metadata accessor for JSON();
    v4 = sub_1B6AB91F0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSNumber)number
{
  v2 = self;
  v3 = sub_1B69D9EFC();

  return v3;
}

- (id)toDataWithOptions:(unint64_t)a3 :(id *)a4
{
  v5 = self;
  v6 = sub_1B69DA064(a3);
  v8 = v7;

  v9 = sub_1B6AB8C60();
  sub_1B6993C94(v6, v8);

  return v9;
}

- (AAJSON)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  v2 = self;
  JSON.description.getter();

  v3 = sub_1B6AB92B0();

  return v3;
}

@end