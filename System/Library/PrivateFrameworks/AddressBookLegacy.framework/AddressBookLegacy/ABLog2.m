@interface ABLog2
@end

@implementation ABLog2

void ___ABLog2_block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%llx", *(a1 + 40)), "UTF8String"];
  v3 = asl_new(0);
  if (v3)
  {
    v4 = v3;
    asl_set(v3, "ThreadID", v2);
    asl_set(v4, "Level", [objc_msgSend(objc_msgSend(MEMORY[0x1E696AD98] numberWithInt:{*(a1 + 56)), "stringValue"), "UTF8String"}]);
    asl_set(v4, "Function", *(a1 + 48));
    asl_set(v4, "Line", [objc_msgSend(objc_msgSend(MEMORY[0x1E696AD98] numberWithInt:{*(a1 + 60)), "stringValue"), "UTF8String"}]);
    asl_set(v4, "Message", [*(a1 + 32) UTF8String]);
    asl_set(v4, "Category", "Debug");
    asl_set(v4, "Facility", [@"com.apple.AddressBookLegacy" UTF8String]);
    asl_send(__ABLogAslClient, v4);

    JUMPOUT(0x1B8CB6730);
  }

  NSLog(&cfstr_ErrorCreatingN.isa, *(a1 + 32));
}

@end