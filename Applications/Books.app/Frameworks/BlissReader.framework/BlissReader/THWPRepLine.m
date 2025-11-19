@interface THWPRepLine
+ (id)lineWithLineMetrics:(id *)a3;
- ($E27F0ECF522FD4C8B59B89BF5FE2579C)lineMetrics;
@end

@implementation THWPRepLine

+ (id)lineWithLineMetrics:(id *)a3
{
  result = objc_alloc_init(THWPRepLine);
  v5 = *&a3->var1;
  v6 = *&a3->var3;
  size = a3->var0.size;
  *(result + 8) = a3->var0.origin;
  *(result + 56) = v6;
  *(result + 40) = v5;
  *(result + 24) = size;
  return result;
}

- ($E27F0ECF522FD4C8B59B89BF5FE2579C)lineMetrics
{
  v3 = *&self->var0.size.height;
  retstr->var0.origin = *&self->var0.origin.y;
  retstr->var0.size = v3;
  v4 = *&self->var4;
  *&retstr->var1 = *&self->var2;
  *&retstr->var3 = v4;
  return self;
}

@end