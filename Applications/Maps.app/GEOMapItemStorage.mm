@interface GEOMapItemStorage
- (id)searchResultForFidelity:(unint64_t)a3 refinedHandler:(id)a4;
@end

@implementation GEOMapItemStorage

- (id)searchResultForFidelity:(unint64_t)a3 refinedHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(GEOMapItemStorage *)self data];
  v8 = [GEOMapItemStorage mapItemStorageForSerializedMapItemStorage:v7];

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
  if ((v4 & 0x10) == 0)
  {
    [(SearchResultRepr *)v10 setHasIncompleteMetadata:1];
    v12 = +[MKMapService sharedService];
    v13 = [v12 ticketForMapItemToRefine:v9];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100F1BA74;
    v16[3] = &unk_10165D020;
    v17 = v11;
    v18 = v6;
    v14 = v11;
    [v13 submitWithRefinedHandler:v16 networkActivity:0];

    v11 = 0;
  }

LABEL_9:

  return v11;
}

@end