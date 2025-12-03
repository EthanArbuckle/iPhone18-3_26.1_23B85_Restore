@interface TranscriptWaitingViewTextAttachmentViewProvider
- (_TtC10VoiceMemos47TranscriptWaitingViewTextAttachmentViewProvider)initWithTextAttachment:(id)attachment parentView:(id)view textLayoutManager:(id)manager location:(id)location;
- (void)loadView;
@end

@implementation TranscriptWaitingViewTextAttachmentViewProvider

- (void)loadView
{
  v3 = objc_allocWithZone(type metadata accessor for TranscriptWaitingImageView());
  selfCopy = self;
  v4 = [v3 init];
  [(TranscriptWaitingViewTextAttachmentViewProvider *)selfCopy setView:v4];
}

- (_TtC10VoiceMemos47TranscriptWaitingViewTextAttachmentViewProvider)initWithTextAttachment:(id)attachment parentView:(id)view textLayoutManager:(id)manager location:(id)location
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for TranscriptWaitingViewTextAttachmentViewProvider();
  return [(TranscriptWaitingViewTextAttachmentViewProvider *)&v11 initWithTextAttachment:attachment parentView:view textLayoutManager:manager location:location];
}

@end