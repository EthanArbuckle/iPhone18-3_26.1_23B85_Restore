@interface PodcastsDiagnosticExtension
- (_TtC38com_apple_podcasts_DiagnosticExtension27PodcastsDiagnosticExtension)init;
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation PodcastsDiagnosticExtension

- (id)attachmentsForParameters:(id)parameters
{
  if (parameters)
  {
    v4 = sub_100002E8C();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  v6 = sub_100001560(v4);

  if (v6)
  {
    v7.super.isa = sub_100002ECC().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

- (_TtC38com_apple_podcasts_DiagnosticExtension27PodcastsDiagnosticExtension)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PodcastsDiagnosticExtension();
  return [(PodcastsDiagnosticExtension *)&v3 init];
}

@end