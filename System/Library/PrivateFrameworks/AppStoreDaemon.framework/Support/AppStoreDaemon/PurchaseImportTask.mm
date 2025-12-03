@interface PurchaseImportTask
- (PurchaseImportTask)init;
- (void)main;
@end

@implementation PurchaseImportTask

- (PurchaseImportTask)init
{
  v3.receiver = self;
  v3.super_class = PurchaseImportTask;
  result = [(Task *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)main
{
  v3 = [NSMutableArray arrayWithCapacity:[(NSArray *)self->_storeItems count]];
  v4 = [(NSArray *)self->_storeItems count]> 1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  storeItems = self->_storeItems;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100223E8C;
  v12[3] = &unk_10051DC50;
  v12[4] = self;
  v15 = v4;
  v6 = v3;
  v13 = v6;
  v14 = &v16;
  [(NSArray *)storeItems enumerateObjectsUsingBlock:v12];
  v7 = sub_1002C0D84();
  sub_1002C13BC(v7, 0x4000);

  sub_100282930(self->_purchaseBatch, v6, self->_purchaseInfo);
  if (*(v17 + 24) == 1)
  {
    v8 = sub_1002C0D84();
    sub_1002C19F0(v8);
  }

  v9 = ASDLogHandleForCategory();
  signpostID = [(PurchaseInfo *)self->_purchaseInfo signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, signpostID, "Purchase/Import", "", v11, 2u);
  }

  [(Task *)self completeWithSuccess];
  _Block_object_dispose(&v16, 8);
}

@end