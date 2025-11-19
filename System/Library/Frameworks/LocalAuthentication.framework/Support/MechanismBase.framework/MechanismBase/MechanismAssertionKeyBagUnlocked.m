@interface MechanismAssertionKeyBagUnlocked
- (MechanismAssertionKeyBagUnlocked)initWithMechanism:(id)a3;
- (MechanismAssertionKeyBagUnlocked)initWithMechanism:(id)a3 keybag:(id)a4 workQueue:(id)a5;
- (MechanismAssertionKeyBagUnlocked)initWithMechanism:(id)a3 workQueue:(id)a4;
- (void)_handleKeybagStateUpdate;
- (void)dealloc;
- (void)keybagStateDidChange:(id)a3;
@end

@implementation MechanismAssertionKeyBagUnlocked

- (MechanismAssertionKeyBagUnlocked)initWithMechanism:(id)a3
{
  v4 = MEMORY[0x277D24028];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 createDefaultSerialQueueWithIdentifier:v7];

  v9 = [(MechanismAssertionKeyBagUnlocked *)self initWithMechanism:v5 workQueue:v8];
  return v9;
}

- (MechanismAssertionKeyBagUnlocked)initWithMechanism:(id)a3 workQueue:(id)a4
{
  v6 = MEMORY[0x277D24088];
  v7 = a4;
  v8 = a3;
  v9 = [v6 sharedInstance];
  v10 = [v8 request];
  v11 = [v9 keybagForUserId:{objc_msgSend(v10, "evaluationUserId")}];

  v12 = [(MechanismAssertionKeyBagUnlocked *)self initWithMechanism:v8 keybag:v11 workQueue:v7];
  return v12;
}

- (MechanismAssertionKeyBagUnlocked)initWithMechanism:(id)a3 keybag:(id)a4 workQueue:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MechanismAssertionKeyBagUnlocked;
  v11 = [(MechanismAssertion *)&v14 initWithMechanism:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_keybag, a4);
    objc_storeStrong(&v12->_workQueue, a5);
  }

  return v12;
}

- (void)dealloc
{
  [(LACKeyBag *)self->_keybag removeObserver:self];
  v3.receiver = self;
  v3.super_class = MechanismAssertionKeyBagUnlocked;
  [(MechanismAssertion *)&v3 dealloc];
}

- (void)keybagStateDidChange:(id)a3
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__MechanismAssertionKeyBagUnlocked_keybagStateDidChange___block_invoke;
  v5[3] = &unk_278A626F0;
  objc_copyWeak(&v6, &location);
  dispatch_async(workQueue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __57__MechanismAssertionKeyBagUnlocked_keybagStateDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _handleKeybagStateUpdate];
    WeakRetained = v2;
  }
}

- (void)_handleKeybagStateUpdate
{
  if ([(LACKeyBag *)self->_keybag state]== 5)
  {

    [(MechanismAssertion *)self handleAssertionSuccessWithReason:@"Keybag is unlocked"];
  }

  else
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = NSStringFromLACKeyBagState();
    v7 = [v3 stringWithFormat:@"Cannot proceed while keybag state is %@", v4];

    v5 = [MEMORY[0x277D24060] errorWithCode:*MEMORY[0x277D23E90] debugDescription:v7];
    v6 = [v5 debugDescription];
    [(MechanismAssertion *)self handleAssertionFailureWithReason:v6 error:v5];
  }
}

@end