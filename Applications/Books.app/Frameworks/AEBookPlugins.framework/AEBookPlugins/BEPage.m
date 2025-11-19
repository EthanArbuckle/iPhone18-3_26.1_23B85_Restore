@interface BEPage
+ (id)generatePagesFrom:(id)a3;
- (BEPage)init;
- (NSString)description;
@end

@implementation BEPage

- (BEPage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  v2 = self;
  Page.description.getter();

  v3 = sub_139990();

  return v3;
}

+ (id)generatePagesFrom:(id)a3
{
  swift_unknownObjectRetain();
  _s13AEBookPlugins4PageC13generatePages4fromSayACGAA30DocumentPaginationDataProvider_p_tFZ_0(a3);
  swift_unknownObjectRelease();
  type metadata accessor for Page();
  v4.super.isa = sub_139A30().super.isa;

  return v4.super.isa;
}

@end