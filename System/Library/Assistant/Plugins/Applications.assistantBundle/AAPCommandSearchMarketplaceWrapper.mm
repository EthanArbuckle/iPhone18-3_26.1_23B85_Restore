@interface AAPCommandSearchMarketplaceWrapper
- (_TtC12Applications34AAPCommandSearchMarketplaceWrapper)init;
- (_TtC12Applications34AAPCommandSearchMarketplaceWrapper)initWithMarketplace:(id)a3 keyword:(id)a4;
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4 executionInfo:(id)a5;
@end

@implementation AAPCommandSearchMarketplaceWrapper

- (_TtC12Applications34AAPCommandSearchMarketplaceWrapper)initWithMarketplace:(id)a3 keyword:(id)a4
{
  if (!a3)
  {
    v6 = 0;
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v6 = sub_1249C();
  v8 = v7;
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1249C();
LABEL_6:
  v11 = (self + OBJC_IVAR____TtC12Applications34AAPCommandSearchMarketplaceWrapper_marketplace);
  *v11 = v6;
  v11[1] = v8;
  v12 = (self + OBJC_IVAR____TtC12Applications34AAPCommandSearchMarketplaceWrapper_keyword);
  *v12 = v9;
  v12[1] = v10;
  v14.receiver = self;
  v14.super_class = type metadata accessor for AAPCommandSearchMarketplaceWrapper();
  return [(AAPCommandSearchMarketplaceWrapper *)&v14 init];
}

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4 executionInfo:(id)a5
{
  v7 = _Block_copy(a3);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_EE68;
  }

  else
  {
    v8 = 0;
  }

  swift_unknownObjectRetain();
  v9 = a5;
  v10 = self;
  _s12Applications34AAPCommandSearchMarketplaceWrapperC7perform10completion13serviceHelper13executionInfoyySDys11AnyHashableVypGSgcSg_So09AFServiceI0_pSgSo018AFCommandExecutionK0CSgtF_0(v7, v8);
  sub_EE20(v7);
  swift_unknownObjectRelease();
}

- (_TtC12Applications34AAPCommandSearchMarketplaceWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end