@interface _GEOTransitLineWrapper
- (_GEOTransitLineWrapper)initWithName:(id)name artwork:(id)artwork;
@end

@implementation _GEOTransitLineWrapper

- (_GEOTransitLineWrapper)initWithName:(id)name artwork:(id)artwork
{
  nameCopy = name;
  artworkCopy = artwork;
  v12.receiver = self;
  v12.super_class = _GEOTransitLineWrapper;
  v8 = [(_GEOTransitLineWrapper *)&v12 init];
  if (v8)
  {
    if (!nameCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = [nameCopy copy];
      name = v8->_name;
      v8->_name = v9;
    }

    if (!artworkCopy || [artworkCopy conformsToProtocol:&OBJC_PROTOCOL___GEOTransitArtworkDataSource])
    {
      objc_storeStrong(&v8->_artwork, artwork);
    }
  }

  return v8;
}

@end