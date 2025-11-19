@interface MapsSuggestionsDGVLinkOverlay
- (MapsSuggestionsDGVLinkOverlay)initWithFromAnnotation:(id)a3 toAnnotation:(id)a4 index:(unint64_t)a5;
@end

@implementation MapsSuggestionsDGVLinkOverlay

- (MapsSuggestionsDGVLinkOverlay)initWithFromAnnotation:(id)a3 toAnnotation:(id)a4 index:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v20.receiver = self;
  v20.super_class = MapsSuggestionsDGVLinkOverlay;
  v10 = [(MapsSuggestionsDGVLinkOverlay *)&v20 init];
  if (v10)
  {
    v11 = v10;
    [v8 coordinate];
    v13 = v12;
    [v8 coordinate];
    v21[0] = CLLocationCoordinate2DMake(v13, v14);
    [v9 coordinate];
    v16 = v15;
    [v9 coordinate];
    v21[1] = CLLocationCoordinate2DMake(v16, v17);
    [(MapsSuggestionsDGVLinkOverlay *)v11 setIndex:a5];
    v18 = [MapsSuggestionsDGVLinkOverlay polylineWithCoordinates:v21 count:2];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end