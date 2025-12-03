@interface THWPRepLine
+ (id)lineWithLineMetrics:(id *)metrics;
- ($E27F0ECF522FD4C8B59B89BF5FE2579C)lineMetrics;
@end

@implementation THWPRepLine

+ (id)lineWithLineMetrics:(id *)metrics
{
  result = objc_alloc_init(THWPRepLine);
  v5 = *&metrics->var1;
  v6 = *&metrics->var3;
  size = metrics->var0.size;
  *(result + 8) = metrics->var0.origin;
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