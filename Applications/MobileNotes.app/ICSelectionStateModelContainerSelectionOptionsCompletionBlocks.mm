@interface ICSelectionStateModelContainerSelectionOptionsCompletionBlocks
- (ICSelectionStateModelContainerSelectionOptionsCompletionBlocks)init;
- (ICSelectionStateModelContainerSelectionOptionsCompletionBlocks)initWithDataIndexedBlock:(id)block dataRenderedBlock:(id)renderedBlock;
- (id)copyWithZone:(void *)zone;
- (id)dataIndexedBlock;
- (id)dataRenderedBlock;
@end

@implementation ICSelectionStateModelContainerSelectionOptionsCompletionBlocks

- (id)dataIndexedBlock
{
  if (*(self + OBJC_IVAR___ICSelectionStateModelContainerSelectionOptionsCompletionBlocks_dataIndexedBlock))
  {
    v2 = *(self + OBJC_IVAR___ICSelectionStateModelContainerSelectionOptionsCompletionBlocks_dataIndexedBlock + 8);
    v5[4] = *(self + OBJC_IVAR___ICSelectionStateModelContainerSelectionOptionsCompletionBlocks_dataIndexedBlock);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_1001B8B10;
    v5[3] = &unk_10064FD10;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dataRenderedBlock
{
  if (*(self + OBJC_IVAR___ICSelectionStateModelContainerSelectionOptionsCompletionBlocks_dataRenderedBlock))
  {
    v2 = *(self + OBJC_IVAR___ICSelectionStateModelContainerSelectionOptionsCompletionBlocks_dataRenderedBlock + 8);
    v5[4] = *(self + OBJC_IVAR___ICSelectionStateModelContainerSelectionOptionsCompletionBlocks_dataRenderedBlock);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_10028DCE8;
    v5[3] = &unk_10064FCE8;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ICSelectionStateModelContainerSelectionOptionsCompletionBlocks)initWithDataIndexedBlock:(id)block dataRenderedBlock:(id)renderedBlock
{
  v6 = _Block_copy(block);
  v7 = _Block_copy(renderedBlock);
  v8 = v7;
  if (!v6)
  {
    v9 = 0;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  v6 = sub_1001C57D4;
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = sub_1001C57CC;
LABEL_6:
  v12 = (self + OBJC_IVAR___ICSelectionStateModelContainerSelectionOptionsCompletionBlocks_dataIndexedBlock);
  *v12 = v6;
  v12[1] = v9;
  v13 = (self + OBJC_IVAR___ICSelectionStateModelContainerSelectionOptionsCompletionBlocks_dataRenderedBlock);
  *v13 = v11;
  v13[1] = v10;
  v15.receiver = self;
  v15.super_class = type metadata accessor for ICSelectionStateModel.ContainerSelectionCompletionBlocks();
  return [(ICSelectionStateModelContainerSelectionOptionsCompletionBlocks *)&v15 init];
}

- (id)copyWithZone:(void *)zone
{
  v3 = *(self + OBJC_IVAR___ICSelectionStateModelContainerSelectionOptionsCompletionBlocks_dataIndexedBlock);
  v4 = *(self + OBJC_IVAR___ICSelectionStateModelContainerSelectionOptionsCompletionBlocks_dataIndexedBlock + 8);
  v5 = *(self + OBJC_IVAR___ICSelectionStateModelContainerSelectionOptionsCompletionBlocks_dataRenderedBlock);
  v6 = *(self + OBJC_IVAR___ICSelectionStateModelContainerSelectionOptionsCompletionBlocks_dataRenderedBlock + 8);
  v7 = type metadata accessor for ICSelectionStateModel.ContainerSelectionCompletionBlocks();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptionsCompletionBlocks_dataIndexedBlock];
  *v9 = v3;
  v9[1] = v4;
  v10 = &v8[OBJC_IVAR___ICSelectionStateModelContainerSelectionOptionsCompletionBlocks_dataRenderedBlock];
  *v10 = v5;
  v10[1] = v6;
  sub_100010854(v3);
  sub_100010854(v5);
  v12.receiver = v8;
  v12.super_class = v7;
  return [(ICSelectionStateModelContainerSelectionOptionsCompletionBlocks *)&v12 init];
}

- (ICSelectionStateModelContainerSelectionOptionsCompletionBlocks)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end