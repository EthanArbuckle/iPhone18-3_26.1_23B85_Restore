@interface SearchToolDiagnostic
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation SearchToolDiagnostic

- (id)attachmentsForParameters:(id)parameters
{
  if (parameters)
  {
    v4 = sub_100007E84();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
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