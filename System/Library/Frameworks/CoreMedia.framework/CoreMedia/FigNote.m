@interface FigNote
@end

@implementation FigNote

uint64_t __FigNote_ChangeValue_block_invoke(uint64_t a1)
{
  result = CFDictionaryGetValue(gFigNoteVariableRegistry_1, *(a1 + 32));
  if (result)
  {
    result = CFDictionaryGetValue(result, *(a1 + 40));
    if (result)
    {
      v3 = result;
      result = CFArrayGetCount(result);
      if (result >= 1)
      {
        v4 = result;
        for (i = 0; i != v4; ++i)
        {
          result = CFArrayGetValueAtIndex(v3, i);
          **(result + 8) = *(a1 + 56);
        }
      }

      **(a1 + 48) = 0;
    }
  }

  return result;
}

uint64_t __FigNote_GetValue_block_invoke(uint64_t a1)
{
  result = CFDictionaryGetValue(gFigNoteVariableRegistry_1, *(a1 + 32));
  if (result)
  {
    result = CFDictionaryGetValue(result, *(a1 + 40));
    if (result)
    {
      v3 = result;
      result = CFArrayGetCount(result);
      if (result >= 1)
      {
        result = CFArrayGetValueAtIndex(v3, 0);
        v4 = *(a1 + 56);
        **(a1 + 48) = **(result + 8);
        *v4 = 0;
      }
    }
  }

  return result;
}

uint64_t __FigNote_ConfigureRingBuffer_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if (v1)
  {
    if (v1 >= 0x200000)
    {
      return __FigNote_ConfigureRingBuffer_block_invoke_cold_1(result);
    }
  }

  else
  {
    v1 = 0x100000;
  }

  qword_1ED4CC180 = v1;
  if (byte_1ED4CC169)
  {
    fig_note_dropRingBufferDataStructuresInternal();

    return fig_note_makeRingBufferDataStructuresInternal();
  }

  return result;
}

void __FigNote_EnableRingBuffer_block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = byte_1ED4CC169 == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    fig_note_makeRingBufferDataStructuresInternal();
  }

  else
  {
    if (*(a1 + 32))
    {
      v3 = 1;
    }

    else
    {
      v3 = byte_1ED4CC169 == 0;
    }

    if (!v3)
    {
      fig_note_dropRingBufferDataStructuresInternal();
    }
  }

  byte_1ED4CC169 = *(a1 + 32);
}

void __FigNote_CopyRingBufferLogArrayAndResetRing_block_invoke(uint64_t a1)
{
  v2 = atomic_load(&qword_1ED4CC178);
  *(*(*(a1 + 32) + 8) + 24) = v2;
  v3 = qword_1ED4CC170;
  if (qword_1ED4CC170)
  {
    v3 = CFRetain(qword_1ED4CC170);
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    *(*(*(a1 + 48) + 8) + 24) = qword_1ED4CC180;
    if (!*(a1 + 56) || (~*(*(*(a1 + 32) + 8) + 24) & 0x1FFFFF) != 0)
    {
      fig_note_dropRingBufferDataStructuresInternal();
      if (*(a1 + 56))
      {

        fig_note_makeRingBufferDataStructuresInternal();
      }

      else
      {
        byte_1ED4CC169 = 0;
      }
    }
  }
}

void __FigNote_CopyKeys_block_invoke(uint64_t a1)
{
  Value = CFDictionaryGetValue(gFigNoteVariableRegistry_1, *(a1 + 40));
  if (Value)
  {
    v3 = Value;
    Count = CFDictionaryGetCount(Value);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
      CFDictionaryGetKeysAndValues(v3, v6, 0);
      v7 = 0;
      *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      do
      {
        CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v6[v7++]);
      }

      while (v5 != v7);

      free(v6);
    }
  }
}

size_t __FigNote_ConfigureRingBuffer_block_invoke_cold_1(uint64_t a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBED8uLL, "|FigNote|", 0xA83, v3, v4, v5);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end