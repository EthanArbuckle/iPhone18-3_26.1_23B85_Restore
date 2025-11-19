@interface AXNamedReplayableGesture
@end

@implementation AXNamedReplayableGesture

void __96__AXNamedReplayableGesture_AXPIAdditions___tapGestureAtPoint_isDoubleTap_numberOfFingers_force___block_invoke(uint64_t a1, NSString *string, uint64_t a3)
{
  v5 = MEMORY[0x277CCAE60];
  v6 = CGPointFromString(string);
  v7 = [v5 valueWithCGPoint:{v6.x, v6.y}];
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v8 setObject:v7 forKeyedSubscript:v9];

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v10 = *(a1 + 40);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v10 setObject:v12 forKeyedSubscript:v11];
}

void __91__AXNamedReplayableGesture_AXPIAdditions__holdGestureAtPoint_withDuration_numberOfFingers___block_invoke(uint64_t a1, NSString *string, uint64_t a3)
{
  v5 = MEMORY[0x277CCAE60];
  v6 = CGPointFromString(string);
  v7 = [v5 valueWithCGPoint:{v6.x, v6.y}];
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v8 setObject:v7 forKeyedSubscript:v9];

  v10 = *(a1 + 40);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v10 setObject:&unk_284FC7880 forKeyedSubscript:v11];
}

@end