@interface BSUIMicaFileProvider
- (BSUIMicaFileProvider)init;
- (id)dataFor:(id)a3;
@end

@implementation BSUIMicaFileProvider

- (id)dataFor:(id)a3
{
  v4 = sub_2C58C8();
  v6 = v5;
  v7 = self;
  v8 = sub_135B8C(v4, v6);
  v10 = v9;

  if (v10 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    isa = sub_2BE3C8().super.isa;
    sub_135E54(v8, v10);
    v11 = isa;
  }

  return v11;
}

- (BSUIMicaFileProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MicaFileProvider();
  return [(BSUIMicaFileProvider *)&v3 init];
}

@end