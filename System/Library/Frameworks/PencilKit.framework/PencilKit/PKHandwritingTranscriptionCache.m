@interface PKHandwritingTranscriptionCache
- (PKHandwritingTranscriptionCache)init;
- (id)cachedTranscriptionForStrokeGroup:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PKHandwritingTranscriptionCache

- (PKHandwritingTranscriptionCache)init
{
  v6.receiver = self;
  v6.super_class = PKHandwritingTranscriptionCache;
  v2 = [(PKHandwritingTranscriptionCache *)&v6 init];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  cache = v2->_cache;
  v2->_cache = v3;

  return v2;
}

- (id)cachedTranscriptionForStrokeGroup:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:a3];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PKHandwritingTranscriptionCache);
  v5 = [(NSMutableDictionary *)self->_cache copy];
  cache = v4->_cache;
  v4->_cache = v5;

  return v4;
}

@end