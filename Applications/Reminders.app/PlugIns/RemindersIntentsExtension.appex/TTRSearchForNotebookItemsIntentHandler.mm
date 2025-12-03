@interface TTRSearchForNotebookItemsIntentHandler
- (_TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler)init;
- (void)resolveLocationForSearchForNotebookItems:(id)items withCompletion:(id)completion;
- (void)resolveLocationSearchTypeForSearchForNotebookItems:(id)items withCompletion:(id)completion;
@end

@implementation TTRSearchForNotebookItemsIntentHandler

- (void)resolveLocationForSearchForNotebookItems:(id)items withCompletion:(id)completion
{
  v5 = _Block_copy(completion);
  itemsCopy = items;
  location = [itemsCopy location];
  if (location)
  {
    v8 = location;
    notRequired = [objc_opt_self() successWithResolvedPlacemark:location];
    v5[2](v5);

    _Block_release(v5);
  }

  else
  {
    sub_100008D28(0, &qword_100041C38, INPlacemarkResolutionResult_ptr);
    notRequired = [swift_getObjCClassFromMetadata() notRequired];
    v5[2](v5);

    _Block_release(v5);
  }
}

- (void)resolveLocationSearchTypeForSearchForNotebookItems:(id)items withCompletion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = objc_opt_self();
  itemsCopy = items;
  v8 = [v6 successWithResolvedLocationSearchType:{objc_msgSend(itemsCopy, "locationSearchType")}];
  v5[2](v5, v8);

  _Block_release(v5);
}

- (_TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end