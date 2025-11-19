@interface JSAColorUtils
+ (id)blendHexColors:(id)a3 :(id)a4 :(id)a5;
- (_TtC5JSApp13JSAColorUtils)init;
@end

@implementation JSAColorUtils

- (_TtC5JSApp13JSAColorUtils)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(JSAColorUtils *)&v3 init];
}

+ (id)blendHexColors:(id)a3 :(id)a4 :(id)a5
{
  v5 = sub_843AC();
  v7 = v6;
  v8 = sub_843AC();
  v10 = v9;
  v11 = sub_843AC();
  sub_780BC(v5, v7, v8, v10, v11, v12);
  v14 = v13;

  if (v14)
  {
    v15 = sub_8437C();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end