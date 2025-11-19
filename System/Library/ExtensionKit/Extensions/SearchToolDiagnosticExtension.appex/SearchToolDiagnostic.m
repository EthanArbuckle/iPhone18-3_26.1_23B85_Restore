@interface SearchToolDiagnostic
- (id)attachmentsForParameters:(id)a3;
@end

@implementation SearchToolDiagnostic

- (id)attachmentsForParameters:(id)a3
{
  if (a3)
  {
    v4 = sub_100007E84();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_1000018E8(v4);
  v7 = v6;

  if (v7)
  {
    v8.super.isa = sub_100007F34().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  return v8.super.isa;
}

@end