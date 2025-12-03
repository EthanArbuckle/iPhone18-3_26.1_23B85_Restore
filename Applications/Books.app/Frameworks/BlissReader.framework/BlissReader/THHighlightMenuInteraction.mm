@interface THHighlightMenuInteraction
- (THHighlightMenuInteraction)initWithAnnotationUUID:(id)d delegate:(id)delegate;
@end

@implementation THHighlightMenuInteraction

- (THHighlightMenuInteraction)initWithAnnotationUUID:(id)d delegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = THHighlightMenuInteraction;
  result = [(THHighlightMenuInteraction *)&v6 initWithDelegate:delegate];
  result->_annotationUUID = d;
  return result;
}

@end