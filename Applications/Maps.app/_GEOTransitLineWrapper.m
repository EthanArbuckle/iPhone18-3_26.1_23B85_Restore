@interface _GEOTransitLineWrapper
- (_GEOTransitLineWrapper)initWithName:(id)a3 artwork:(id)a4;
@end

@implementation _GEOTransitLineWrapper

- (_GEOTransitLineWrapper)initWithName:(id)a3 artwork:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _GEOTransitLineWrapper;
  v8 = [(_GEOTransitLineWrapper *)&v12 init];
  if (v8)
  {
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = [v6 copy];
      name = v8->_name;
      v8->_name = v9;
    }

    if (!v7 || [v7 conformsToProtocol:&OBJC_PROTOCOL___GEOTransitArtworkDataSource])
    {
      objc_storeStrong(&v8->_artwork, a4);
    }
  }

  return v8;
}

@end