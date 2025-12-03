@interface GKNATObserver
+ (id)allocWithZone:(_NSZone *)zone;
- (GKNATObserver)initWithOptions:(id)options;
- (GKNATObserverDelegate)delegate;
- (int)currentNATType;
- (void)setDelegate:(id)delegate;
- (void)shouldTryNATCheck;
@end

@implementation GKNATObserver

+ (id)allocWithZone:(_NSZone *)zone
{
  selfCopy = self;
  if (objc_opt_self() == self)
  {
    selfCopy = objc_opt_self();
  }

  return NSAllocateObject(selfCopy, 0, zone);
}

- (GKNATObserver)initWithOptions:(id)options
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = GKNATObserver;
  [(GKNATObserver *)&v4 doesNotRecognizeSelector:a2];
  return 0;
}

- (void)setDelegate:(id)delegate
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