@interface THHighlightMenuInteraction
- (THHighlightMenuInteraction)initWithAnnotationUUID:(id)a3 delegate:(id)a4;
@end

@implementation THHighlightMenuInteraction

- (THHighlightMenuInteraction)initWithAnnotationUUID:(id)a3 delegate:(id)a4
{
  v6.receiver = self;
  v6.super_class = THHighlightMenuInteraction;
  result = [(THHighlightMenuInteraction *)&v6 initWithDelegate:a4];
  result->_annotationUUID = a3;
  return result;
}

@end