@interface _LeghornDemoPOICollection
- (_LeghornDemoPOICollection)initWithTitle:(id)a3;
@end

@implementation _LeghornDemoPOICollection

- (_LeghornDemoPOICollection)initWithTitle:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _LeghornDemoPOICollection;
  v6 = [(_LeghornDemoPOICollection *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_title, a3);
    v8 = objc_opt_new();
    pois = v7->_pois;
    v7->_pois = v8;
  }

  return v7;
}

@end