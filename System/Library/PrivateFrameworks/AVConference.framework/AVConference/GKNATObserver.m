@interface GKNATObserver
+ (id)allocWithZone:(_NSZone *)a3;
- (GKNATObserver)initWithOptions:(id)a3;
- (GKNATObserverDelegate)delegate;
- (int)currentNATType;
- (void)setDelegate:(id)a3;
- (void)shouldTryNATCheck;
@end

@implementation GKNATObserver

+ (id)allocWithZone:(_NSZone *)a3
{
  v4 = a1;
  if (objc_opt_self() == a1)
  {
    v4 = objc_opt_self();
  }

  return NSAllocateObject(v4, 0, a3);
}

- (GKNATObserver)initWithOptions:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = GKNATObserver;
  [(GKNATObserver *)&v4 doesNotRecognizeSelector:a2];
  return 0;
}

- (void)setDelegate:(id)a3
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = GKNATObserver;
  [(GKNATObserver *)&v3 doesNotRecognizeSelector:a2];
}

- (GKNATObserverDelegate)delegate
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = GKNATObserver;
  [(GKNATObserver *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

- (int)currentNATType
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = GKNATObserver;
  [(GKNATObserver *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

- (void)shouldTryNATCheck
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = self;
  v2.super_class = GKNATObserver;
  [(GKNATObserver *)&v2 doesNotRecognizeSelector:a2];
}

@end