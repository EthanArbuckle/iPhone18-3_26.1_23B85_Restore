@interface MapsSuggestionsDGVLinkOverlay
- (MapsSuggestionsDGVLinkOverlay)initWithFromAnnotation:(id)annotation toAnnotation:(id)toAnnotation index:(unint64_t)index;
@end

@implementation MapsSuggestionsDGVLinkOverlay

- (MapsSuggestionsDGVLinkOverlay)initWithFromAnnotation:(id)annotation toAnnotation:(id)toAnnotation index:(unint64_t)index
{
  annotationCopy = annotation;
  toAnnotationCopy = toAnnotation;
  v20.receiver = self;
  v20.super_class = MapsSuggestionsDGVLinkOverlay;
  v10 = [(MapsSuggestionsDGVLinkOverlay *)&v20 init];
  if (v10)
  {
    v11 = v10;
    [annotationCopy coordinate];
    v13 = v12;
    [annotationCopy coordinate];
    v21[0] = CLLocationCoordinate2DMake(v13, v14);
    [toAnnotationCopy coordinate];
    v16 = v15;
    [toAnnotationCopy coordinate];
    v21[1] = CLLocationCoordinate2DMake(v16, v17);
    [(MapsSuggestionsDGVLinkOverlay *)v11 setIndex:index];
    v18 = [MapsSuggestionsDGVLinkOverlay polylineWithCoordinates:v21 count:2];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end