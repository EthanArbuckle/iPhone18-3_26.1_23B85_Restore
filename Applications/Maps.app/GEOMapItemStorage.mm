@interface GEOMapItemStorage
- (id)searchResultForFidelity:(unint64_t)fidelity refinedHandler:(id)handler;
@end

@implementation GEOMapItemStorage

- (id)searchResultForFidelity:(unint64_t)fidelity refinedHandler:(id)handler
{
  fidelityCopy = fidelity;
  handlerCopy = handler;
  data = [(GEOMapItemStorage *)self data];
  v8 = [GEOMapItemStorage mapItemStorageForSerializedMapItemStorage:data];

  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = [MKMapItem _itemWithGeoMapItem:v8];
  if (!v9 || (v10 = [[SearchResult alloc] initWithMapItem:v9]) == 0)
  {

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v11 = v10;
  if ((fidelityCopy & 0x10) == 0)
  {
    [(SearchResultRepr *)v10 setHasIncompleteMetadata:1];
    v12 = +[MKMapService sharedService];
    v13 = [v12 ticketForMapItemToRefine:v9];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100F1BA74;
    v16[3] = &unk_10165D020;
    v17 = v11;
    v18 = handlerCopy;
    v14 = v11;
    [v13 submitWithRefinedHandler:v16 networkActivity:0];

    v11 = 0;
  }

LABEL_9:

  return v11;
}

@end