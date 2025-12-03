@interface AVMetadataObjectCollection
+ (id)collectionWithTime:(id *)time metadataObjectTypes:(id)types handledMetadataObjectTypes:(id)objectTypes metadataObjects:(id)objects;
- (AVMetadataObjectCollection)initWithTime:(id *)time metadataObjectTypes:(id)types handledMetadataObjectTypes:(id)objectTypes metadataObjects:(id)objects;
- (void)dealloc;
@end

@implementation AVMetadataObjectCollection

- (AVMetadataObjectCollection)initWithTime:(id *)time metadataObjectTypes:(id)types handledMetadataObjectTypes:(id)objectTypes metadataObjects:(id)objects
{
  v14.receiver = self;
  v14.super_class = AVMetadataObjectCollection;
  v10 = [(AVMetadataObjectCollection *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v12 = *&time->var0;
    *(v10 + 3) = time->var3;
    *(v10 + 8) = v12;
    *(v10 + 4) = [types copy];
    v11->_handledMetadataObjectTypes = [objectTypes copy];
    v11->_metadataObjects = objects;
  }

  return v11;
}

+ (id)collectionWithTime:(id *)time metadataObjectTypes:(id)types handledMetadataObjectTypes:(id)objectTypes metadataObjects:(id)objects
{
  v10 = objc_alloc(objc_opt_class());
  v12 = *time;
  return [v10 initWithTime:&v12 metadataObjectTypes:types handledMetadataObjectTypes:objectTypes metadataObjects:objects];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetadataObjectCollection;
  [(AVMetadataObjectCollection *)&v3 dealloc];
}

@end