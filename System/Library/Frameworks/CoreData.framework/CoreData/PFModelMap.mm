@interface PFModelMap
@end

@implementation PFModelMap

uint64_t __43___PFModelMap_ancillaryModelFactoryClasses__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DEC8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  result = [v0 initWithObjects:{v1, v2, v3, objc_opt_class(), 0}];
  _MergedGlobals_81 = result;
  return result;
}

uint64_t __35___PFModelMap_initWithClientModel___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a2, "ancillaryEntityOffset")}];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a3, "ancillaryEntityOffset")}];

  return [v4 compare:v5];
}

@end