@interface AAUIBadge
- (AAUIBadge)init;
- (CGPoint)position;
- (id)_newAnimatablePropertyForType:(unint64_t)a3;
- (void)setRotationY:(double)a3;
@end

@implementation AAUIBadge

- (AAUIBadge)init
{
  v3.receiver = self;
  v3.super_class = AAUIBadge;
  result = [(AAUIBadge *)&v3 init];
  if (result)
  {
    result->_position = *MEMORY[0x277CBF348];
  }

  return result;
}

- (id)_newAnimatablePropertyForType:(unint64_t)a3
{
  objc_initWeak(&location, self);
  if (a3 == 2)
  {
    v9 = objc_alloc(MEMORY[0x277CE8E50]);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __43__AAUIBadge__newAnimatablePropertyForType___block_invoke_5;
    v14[3] = &unk_278C43648;
    v5 = &v15;
    objc_copyWeak(&v15, &location);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __43__AAUIBadge__newAnimatablePropertyForType___block_invoke_6;
    v12[3] = &unk_278C43670;
    v6 = &v13;
    objc_copyWeak(&v13, &location);
    v7 = [v9 initWithGetter:v14 setter:v12];
  }

  else if (a3 == 1)
  {
    v8 = objc_alloc(MEMORY[0x277CE8E50]);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __43__AAUIBadge__newAnimatablePropertyForType___block_invoke_3;
    v18[3] = &unk_278C43648;
    v5 = &v19;
    objc_copyWeak(&v19, &location);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __43__AAUIBadge__newAnimatablePropertyForType___block_invoke_4;
    v16[3] = &unk_278C43670;
    v6 = &v17;
    objc_copyWeak(&v17, &location);
    v7 = [v8 initWithGetter:v18 setter:v16];
  }

  else
  {
    if (a3)
    {
      v10 = 0;
      goto LABEL_9;
    }

    v4 = objc_alloc(MEMORY[0x277CE8E50]);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __43__AAUIBadge__newAnimatablePropertyForType___block_invoke;
    v22[3] = &unk_278C43648;
    v5 = &v23;
    objc_copyWeak(&v23, &location);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __43__AAUIBadge__newAnimatablePropertyForType___block_invoke_2;
    v20[3] = &unk_278C43670;
    v6 = &v21;
    objc_copyWeak(&v21, &location);
    v7 = [v4 initWithGetter:v22 setter:v20];
  }

  v10 = v7;
  objc_destroyWeak(v6);
  objc_destroyWeak(v5);
LABEL_9:
  objc_destroyWeak(&location);
  return v10;
}

id __43__AAUIBadge__newAnimatablePropertyForType___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCAE60];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained position];
  v3 = [v1 valueWithCGPoint:?];

  return v3;
}

void __43__AAUIBadge__newAnimatablePropertyForType___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 CGPointValue];
  v4 = v3;
  v6 = v5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPosition:{v4, v6}];
}

id __43__AAUIBadge__newAnimatablePropertyForType___block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rotationX];
  v3 = [v1 numberWithDouble:?];

  return v3;
}

void __43__AAUIBadge__newAnimatablePropertyForType___block_invoke_4(uint64_t a1, void *a2)
{
  [a2 floatValue];
  v4 = v3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRotationX:v4];
}

id __43__AAUIBadge__newAnimatablePropertyForType___block_invoke_5(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rotationY];
  v3 = [v1 numberWithDouble:?];

  return v3;
}

void __43__AAUIBadge__newAnimatablePropertyForType___block_invoke_6(uint64_t a1, void *a2)
{
  [a2 floatValue];
  v4 = v3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRotationY:v4];
}

- (void)setRotationY:(double)a3
{
  if (self->_locksRotationY)
  {
    maxRotationY = self->_maxRotationY;
    if (-maxRotationY >= a3)
    {
      a3 = -maxRotationY;
    }

    if (a3 >= maxRotationY)
    {
      a3 = self->_maxRotationY;
    }
  }

  self->_rotationY = a3;
}

- (CGPoint)position
{
  x = self->_position.x;
  y = self->_position.y;
  result.y = y;
  result.x = x;
  return result;
}

@end