@interface BKAppImportCoordinator
- (BKAppImportCoordinator)init;
- (void)_handleImportedAndPotentiallyMigratedAsset:(id)a3 canShow:(BOOL)a4 transaction:(id)a5;
- (void)importBookFromURL:(id)a3 openAfterImport:(BOOL)a4 importInPlace:(BOOL)a5 showLibraryAllCollection:(BOOL)a6 switchToLibrary:(BOOL)a7 transaction:(id)a8 completion:(id)a9;
@end

@implementation BKAppImportCoordinator

- (BKAppImportCoordinator)init
{
  v8.receiver = self;
  v8.super_class = BKAppImportCoordinator;
  v2 = [(BKAppImportCoordinator *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("BKAppImportCoordinator.queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    +[NSDate timeIntervalSinceReferenceDate];
    v2->_lastImportedBookTimestamp = v6 + -15.0 + -1.0;
  }

  return v2;
}

- (void)importBookFromURL:(id)a3 openAfterImport:(BOOL)a4 importInPlace:(BOOL)a5 showLibraryAllCollection:(BOOL)a6 switchToLibrary:(BOOL)a7 transaction:(id)a8 completion:(id)a9
{
  v12 = a3;
  v13 = a8;
  v14 = a9;
  +[NSDate timeIntervalSinceReferenceDate];
  v16 = v15;
  [(BKAppImportCoordinator *)self lastImportedBookTimestamp];
  v33 = v16 - v17 > 15.0;
  [(BKAppImportCoordinator *)self setLastImportedBookTimestamp:v16];
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = sub_1000272F4;
  v62[4] = sub_1000275C0;
  v63 = 0;
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_100076A64;
  v59[3] = &unk_100A03440;
  v18 = [[BKResolveAssetForImportOperation alloc] initWithURL:v12];
  v60 = v18;
  v61 = self;
  v19 = objc_retainBlock(v59);
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_100076AA4;
  v53[3] = &unk_100A04690;
  v20 = v14;
  v55 = v20;
  v21 = v19;
  v56 = v21;
  v53[4] = self;
  v58 = a5;
  v22 = v13;
  v54 = v22;
  v57 = v62;
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_1000772C4;
  v51[3] = &unk_100A046B8;
  v51[4] = self;
  v52 = objc_retainBlock(v53);
  v32 = v52;
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1000773DC;
  v49[3] = &unk_100A04730;
  v49[4] = self;
  v50 = objc_retainBlock(v51);
  v31 = v50;
  v23 = objc_retainBlock(v49);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100077888;
  block[3] = &unk_100A047D0;
  v37 = v12;
  v38 = self;
  v41 = v21;
  v42 = v20;
  v45 = a6;
  v39 = v18;
  v40 = v22;
  v46 = v33;
  v47 = a5;
  v48 = a7;
  v43 = v23;
  v44 = v62;
  v25 = v23;
  v26 = v22;
  v27 = v20;
  v28 = v21;
  v29 = v18;
  v30 = v12;
  dispatch_async(queue, block);

  _Block_object_dispose(v62, 8);
}

- (void)_handleImportedAndPotentiallyMigratedAsset:(id)a3 canShow:(BOOL)a4 transaction:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = +[BKLibraryManager defaultManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100077FDC;
    v11[3] = &unk_100A047F8;
    v11[4] = self;
    v12 = v8;
    v14 = a4;
    v13 = v9;
    [v10 addCustomOperationBlock:v11];
  }
}

@end