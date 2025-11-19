void libSystem_initializer()
{
  if (!MEMORY[0xFFFFFC100])
  {
    __libkernel_init();
  }

  libSystem_initializer_cold_1();
}

void *fill_msl_symbols(void *result)
{
  if (!off_8138)
  {
    return 0;
  }

  *result = 1;
  result[1] = &msl_handle_memory_event;
  result[2] = &msl_stack_logging_locked;
  result[3] = &msl_fork_prepare;
  result[4] = &msl_fork_parent;
  result[5] = &msl_fork_child;
  v1 = off_8138;
  result[6] = &msl_set_flags_from_environment;
  result[7] = v1;
  result[8] = &msl_turn_on_stack_logging;
  result[9] = &msl_turn_off_stack_logging;
  result[11] = 0;
  result[12] = 0;
  result[10] = &msl_copy_msl_lite_hooks;
  return result;
}

int *__error(void)
{
    ;
  }
}

void __libkernel_init()
{
    ;
  }
}

void __libplatform_init()
{
    ;
  }
}

void __malloc_init()
{
    ;
  }
}

void __malloc_late_init()
{
    ;
  }
}

void __pthread_init()
{
    ;
  }
}

void _dyld_atfork_parent()
{
    ;
  }
}

void _dyld_atfork_prepare()
{
    ;
  }
}

void _dyld_dlopen_atfork_child()
{
    ;
  }
}

void _dyld_dlopen_atfork_parent()
{
    ;
  }
}

void _dyld_dlopen_atfork_prepare()
{
    ;
  }
}

void _dyld_fork_child()
{
    ;
  }
}

void _dyld_initializer()
{
    ;
  }
}

void _libc_fork_child()
{
    ;
  }
}

void _libc_fork_parent()
{
    ;
  }
}

void _libc_fork_prepare()
{
    ;
  }
}

void _libc_initializer()
{
    ;
  }
}

void _libtrace_fork_child()
{
    ;
  }
}

void _libtrace_init()
{
    ;
  }
}

void _mach_fork_child()
{
    ;
  }
}

void _malloc_fork_child()
{
    ;
  }
}

void _malloc_fork_parent()
{
    ;
  }
}

void _malloc_fork_prepare()
{
    ;
  }
}

void _pthread_atfork_child()
{
    ;
  }
}

void _pthread_atfork_child_handlers()
{
    ;
  }
}

void _pthread_atfork_parent()
{
    ;
  }
}

void _pthread_atfork_parent_handlers()
{
    ;
  }
}

void _pthread_atfork_prepare()
{
    ;
  }
}

void _pthread_atfork_prepare_handlers()
{
    ;
  }
}

void cc_atfork_child()
{
    ;
  }
}

void cc_atfork_parent()
{
    ;
  }
}

void cc_atfork_prepare()
{
    ;
  }
}

void dispatch_atfork_child()
{
    ;
  }
}

void dispatch_atfork_parent()
{
    ;
  }
}

void dispatch_atfork_prepare()
{
    ;
  }
}

void dyld_get_program_sdk_version()
{
    ;
  }
}

void kdebug_trace()
{
    ;
  }
}

void libdispatch_init()
{
    ;
  }
}