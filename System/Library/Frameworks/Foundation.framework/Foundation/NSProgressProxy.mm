@interface NSProgressProxy
@end

@implementation NSProgressProxy

void __46___NSProgressProxy__invokeUnpublishingHandler__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(*(a1 + 32) + 136);
  if (v3)
  {
    (*(v3 + 16))();

    *(*(a1 + 32) + 136) = 0;
  }

  objc_autoreleasePoolPop(v2);
}

void __45___NSProgressProxy__invokePublishingHandler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = (*(*(a1 + 40) + 16))();
  v4 = *(*(a1 + 32) + 136);
  if (v3 != v4)
  {
    v5 = v3;

    *(*(a1 + 32) + 136) = [v5 copy];
  }

  objc_autoreleasePoolPop(v2);
}

void __51___NSProgressProxy__setRemoteUserInfoValue_forKey___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5.receiver = *(a1 + 48);
  v5.super_class = _NSProgressProxy;
  objc_msgSendSuper2(&v5, sel__setRemoteUserInfoValue_forKey_, v4, v3);
  objc_autoreleasePoolPop(v2);
}

void __45___NSProgressProxy__setRemoteValues_forKeys___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5.receiver = *(a1 + 48);
  v5.super_class = _NSProgressProxy;
  objc_msgSendSuper2(&v5, sel__setRemoteValues_forKeys_, v4, v3);
  objc_autoreleasePoolPop(v2);
}

@end