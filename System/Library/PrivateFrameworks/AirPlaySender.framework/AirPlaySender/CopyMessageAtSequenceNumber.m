@interface CopyMessageAtSequenceNumber
@end

@implementation CopyMessageAtSequenceNumber

void __audioEngineCarPlay_CopyMessageAtSequenceNumber_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 120))
  {
    MessageAtSequenceNumber = APMessageRingGetMessageAtSequenceNumber(*(v2 + 88), *(a1 + 56), 0, (*(*(a1 + 32) + 8) + 24));
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      __audioEngineCarPlay_CopyMessageAtSequenceNumber_block_invoke_cold_1();
    }

    else
    {
      if (MessageAtSequenceNumber)
      {
        MessageAtSequenceNumber = CFRetain(MessageAtSequenceNumber);
      }

      **(a1 + 48) = MessageAtSequenceNumber;
    }
  }

  else
  {
    __audioEngineCarPlay_CopyMessageAtSequenceNumber_block_invoke_cold_2();
  }
}

@end