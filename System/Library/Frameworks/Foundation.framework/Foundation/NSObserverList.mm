@interface NSObserverList
@end

@implementation NSObserverList

size_t __59___NSObserverList__copyObserversOfObject_creatingIfAbsent___block_invoke()
{
  qword_1ED440288 = objc_opt_class();
  result = class_getInstanceSize(qword_1ED440288);
  qword_1ED440280 = result;
  return result;
}

size_t __48___NSObserverList_destroyObserverListForObject___block_invoke(uint64_t a1)
{
  result = class_getInstanceSize(*(a1 + 32));
  qword_1ED440298 = result;
  return result;
}

void __31___NSObserverList__receiveBox___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (a3 < 2)
  {
    if (!a3)
    {
      return;
    }

    v17 = 0;
  }

  else if ([*(a1 + 32) _isToManyChangeInformation])
  {
    v17 = 1;
  }

  else
  {
    v17 = [*(*(a1 + 32) + 8) conformsToProtocol:&unk_1EEF5D7C0];
  }

  v6 = 0;
  do
  {
    if (*(a2 + 8 * v6))
    {
      v7 = *(*(a1 + 32) + 8);
      if (v17)
      {
        v8 = [v7 copyWithZone:0];
      }

      else
      {
        v8 = v7;
      }

      v9 = v8;
      v10 = *(*(a1 + 32) + 24);
      v11 = *(*(a1 + 40) + 8);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v19 = __31___NSObserverList__receiveBox___block_invoke_2;
      v20 = &__block_descriptor_48_e25_v16__0__NSObservedValue_8l;
      v21 = a2;
      v22 = v6;
      v23[0] = 0;
      StackObservedValueClassAndBoxSize = getStackObservedValueClassAndBoxSize(v23);
      MEMORY[0x1EEE9AC00](StackObservedValueClassAndBoxSize);
      v15 = objc_constructInstance(v14, &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      v15[6] = v10;
      *(v15 + 1) = v9;
      *(v15 + 2) = v11;
      v19(v18, v15);
    }

    ++v6;
  }

  while (a3 != v6);
}

uint64_t __30___NSObserverList_description__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [NSString alloc];
  v7 = objc_opt_class();
  v8 = *(a1 + 32);
  v9 = [a2 count];
  result = -[NSString initWithFormat:](v6, "initWithFormat:", @"%@(%p) of %lu observers of %@: %@", v7, v8, v9, *(*(a1 + 32) + 8), [MEMORY[0x1E695DEC8] arrayWithObjects:a2 count:a3]);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

@end