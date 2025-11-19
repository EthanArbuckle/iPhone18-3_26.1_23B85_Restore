@interface BKBufferedEventEntry
- (void)invalidate;
@end

@implementation BKBufferedEventEntry

- (void)invalidate
{
  sender = self->_sender;
  self->_sender = 0;

  sequence = self->_sequence;
  self->_sequence = 0;

  additionalContext = self->_additionalContext;
  self->_additionalContext = 0;

  rawEvent = self->_rawEvent;
  self->_rawEvent = 0;
}

@end