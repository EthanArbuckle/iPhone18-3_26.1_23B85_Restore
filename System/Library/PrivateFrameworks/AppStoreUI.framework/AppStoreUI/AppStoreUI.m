uint64_t __ASPurchaseBatchErrorEqual(void *a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D6A110];
  if (ISErrorIsEqual() && (ISErrorIsEqual() & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [a1 isEqual:a2 compareUserInfo:1];
  }
}

uint64_t ASAppStoreUIBundle()
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = objc_opt_class();

  return [v0 bundleForClass:v1];
}