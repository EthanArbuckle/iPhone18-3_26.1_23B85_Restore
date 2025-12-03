@interface ContextRequestHandler
- (_TtC25PodcastsClassKitExtension21ContextRequestHandler)init;
- (void)updateDescendantsOfContext:(id)context completion:(id)completion;
@end

@implementation ContextRequestHandler

- (void)updateDescendantsOfContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  contextCopy = context;
  selfCopy = self;
  sub_10000B024(contextCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_TtC25PodcastsClassKitExtension21ContextRequestHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ContextRequestHandler();
  return [(ContextRequestHandler *)&v3 init];
}

@end