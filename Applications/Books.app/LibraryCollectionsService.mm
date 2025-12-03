@interface LibraryCollectionsService
- (void)controllerDidChangeContent:(id)content;
@end

@implementation LibraryCollectionsService

- (void)controllerDidChangeContent:(id)content
{
  contentCopy = content;
  selfCopy = self;
  sub_100489254();
}

@end