@interface APTNANDataSessionGetDispatchQueue
@end

@implementation APTNANDataSessionGetDispatchQueue

dispatch_queue_t ___APTNANDataSessionGetDispatchQueue_block_invoke()
{
  result = dispatch_queue_create("com.apple.airplay.APTNANDataSession", 0);
  _APTNANDataSessionGetDispatchQueue_sAPTNANDataSessionDispatchQueue = result;
  return result;
}

@end