@interface NLNumberGenerator
- (NLNumberGenerator)init;
- (unint64_t)numberInRange:(_NSRange)a3;
@end

@implementation NLNumberGenerator

- (NLNumberGenerator)init
{
  v5.receiver = self;
  v5.super_class = NLNumberGenerator;
  v2 = [(NLNumberGenerator *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NLNumberGenerator *)v2 reset];
  }

  return v3;
}

- (unint64_t)numberInRange:(_NSRange)a3
{
  v3 = self->state[1];
  v4 = self->state[0] ^ (self->state[0] << 23);
  v5 = (v3 >> 26) ^ (v4 >> 17) ^ v3 ^ v4;
  self->state[0] = v3;
  self->state[1] = v5;
  if (a3.length < 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = (v5 + v3) % a3.length;
  }

  return v6 + a3.location;
}

@end