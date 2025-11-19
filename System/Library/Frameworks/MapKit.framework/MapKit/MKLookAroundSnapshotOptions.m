@interface MKLookAroundSnapshotOptions
- (CGSize)size;
- (MKLookAroundSnapshotOptions)init;
@end

@implementation MKLookAroundSnapshotOptions

- (CGSize)size
{
  [(MKMapSnapshotOptions *)self->_options size];
  result.height = v3;
  result.width = v2;
  return result;
}

- (MKLookAroundSnapshotOptions)init
{
  v6.receiver = self;
  v6.super_class = MKLookAroundSnapshotOptions;
  v2 = [(MKLookAroundSnapshotOptions *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MKMapSnapshotOptions);
    options = v2->_options;
    v2->_options = v3;

    [(MKMapSnapshotOptions *)v2->_options setMapType:107];
  }

  return v2;
}

@end