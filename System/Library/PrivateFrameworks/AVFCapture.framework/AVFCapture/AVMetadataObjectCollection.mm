@interface AVMetadataObjectCollection
+ (id)collectionWithTime:(id *)a3 metadataObjectTypes:(id)a4 handledMetadataObjectTypes:(id)a5 metadataObjects:(id)a6;
- (AVMetadataObjectCollection)initWithTime:(id *)a3 metadataObjectTypes:(id)a4 handledMetadataObjectTypes:(id)a5 metadataObjects:(id)a6;
- (void)dealloc;
@end

@implementation AVMetadataObjectCollection

- (AVMetadataObjectCollection)initWithTime:(id *)a3 metadataObjectTypes:(id)a4 handledMetadataObjectTypes:(id)a5 metadataObjects:(id)a6
{
  v14.receiver = self;
  v14.super_class = AVMetadataObjectCollection;
  v10 = [(AVMetadataObjectCollection *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v12 = *&a3->var0;
    *(v10 + 3) = a3->var3;
    *(v10 + 8) = v12;
    *(v10 + 4) = [a4 copy];
    v11->_handledMetadataObjectTypes = [a5 copy];
    v11->_metadataObjects = a6;
  }

  return v11;
}

+ (id)collectionWithTime:(id *)a3 metadataObjectTypes:(id)a4 handledMetadataObjectTypes:(id)a5 metadataObjects:(id)a6
{
  v10 = objc_alloc(objc_opt_class());
  v12 = *a3;
  return [v10 initWithTime:&v12 metadataObjectTypes:a4 handledMetadataObjectTypes:a5 metadataObjects:a6];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetadataObjectCollection;
  [(AVMetadataObjectCollection *)&v3 dealloc];
}

@end