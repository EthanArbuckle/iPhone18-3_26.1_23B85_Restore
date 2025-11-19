@interface AVTEventCoalescer
- (AVTEventCoalescer)initWithDelay:(double)a3 queue:(id)a4 logger:(id)a5;
- (void)eventDidOccur:(id)a3;
- (void)registerEventForCoalescingWithLabel:(id)a3 handler:(id)a4;
@end

@implementation AVTEventCoalescer

- (AVTEventCoalescer)initWithDelay:(double)a3 queue:(id)a4 logger:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = AVTEventCoalescer;
  v11 = [(AVTEventCoalescer *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_delay = a3;
    objc_storeStrong(&v11->_workQueue, a4);
    objc_storeStrong(&v12->_logger, a5);
  }

  return v12;
}

- (void)registerEventForCoalescingWithLabel:(id)a3 handler:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(AVTEventCoalescer *)self eventHandler];

  if (v7)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Coalescer already received an eventHandler"];
  }

  [(AVTEventCoalescer *)self setEventLabel:v8];
  [(AVTEventCoalescer *)self setEventHandler:v6];
}

- (void)eventDidOccur:(id)a3
{
  v4 = a3;
  v5 = [(AVTEventCoalescer *)self eventHandler];

  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Coalescer did not receive an eventHandler"];
  }

  v6 = [(AVTEventCoalescer *)self logger];
  v7 = [(AVTEventCoalescer *)self eventLabel];
  [v6 logCoalesceableEventOccured:v7];

  v8 = [(AVTEventCoalescer *)self workQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__AVTEventCoalescer_eventDidOccur___block_invoke;
  v10[3] = &unk_278CF9F50;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  dispatch_async(v8, v10);
}

void __35__AVTEventCoalescer_eventDidOccur___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) eventDeliveryScheduled])
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *(v2 + 16);

      v3();
    }
  }

  else
  {
    [*(a1 + 32) setEventDeliveryScheduled:1];
    [*(a1 + 32) delay];
    v5 = dispatch_time(0, (v4 * 1000000000.0));
    v6 = [*(a1 + 32) workQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__AVTEventCoalescer_eventDidOccur___block_invoke_2;
    v8[3] = &unk_278CF9F50;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    dispatch_after(v5, v6, v8);
  }
}

uint64_t __35__AVTEventCoalescer_eventDidOccur___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setEventDeliveryScheduled:0];
  v2 = [*(a1 + 32) eventHandler];
  v2[2]();

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

@end